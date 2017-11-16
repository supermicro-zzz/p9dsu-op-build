################################################################################
#
# arcconf
#
################################################################################

ARCCONF_VERSION ?= b27b38b2fc59f99f0cb28f659fdfc54dea834d68
ARCCONF_SITE ?= $(call github,supermicro,arcconf,$(ARCCONF_VERSION))

ARCCONF_LICENSE = Apache-2.0
ARCCONF_LICENSE_FILES = COPYING

define ARCCONF_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/arcconf $(TARGET_DIR)/sbin/arcconf
endef

$(eval $(generic-package))
