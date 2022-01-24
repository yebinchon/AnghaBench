#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  NVMEM_RM_FILEID ; 
 int /*<<< orphan*/  NVMEM_WLAN_DRIVER_SP_FILEID ; 
 int /*<<< orphan*/  NVMEM_WLAN_FW_SP_FILEID ; 
 int /*<<< orphan*/ * aFATEntries ; 
 int* cMacFromEeprom ; 
 unsigned char* cRMParamsFromEeprom ; 
 scalar_t__ cRMdefaultParams ; 
 int counter ; 
 int /*<<< orphan*/  drv_length ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_length ; 
 int /*<<< orphan*/  fw_patch ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ mac_status ; 
 scalar_t__ FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,unsigned char*) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,unsigned char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int return_status ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int ucStatus_Dr ; 
 int ucStatus_FW ; 
 int /*<<< orphan*/  wlan_drv_patch ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10()
{
    unsigned short  index;
    unsigned char   *pRMParams;

    FUNC7("Initializing module...\n");

    // Init module and request to load with no patches.
    // This is in order to overwrite restrictions to
    // write to specific places in EEPROM.
    FUNC1(1);

    // Read MAC address.
    mac_status = FUNC2(cMacFromEeprom);

    return_status = 1;

    FUNC7("Reading RM parameters...\n");
    while ((return_status) && (counter < 3)) {
        // Read RM parameters.
        // Read in 16 parts to work with tiny driver.
        return_status = 0;
        pRMParams = cRMParamsFromEeprom;
        for (index = 0; index < 16; index++) {
            return_status |= FUNC3(NVMEM_RM_FILEID, 8, 8*index, pRMParams);
            pRMParams += 8;
        }
        counter++;
    }

    // If RM file is not valid, load the default one.
    if (counter == 3) {
        FUNC7("RM is not valid, loading default one...\n");
        pRMParams = (unsigned char *)cRMdefaultParams;
    } else {
        FUNC7("RM is valid.\n");
        pRMParams = cRMParamsFromEeprom;
    }

    return_status = 1;

    FUNC7("Writing new FAT\n");
    while (return_status) {
        // Write new FAT.
        return_status = FUNC0(aFATEntries[0], aFATEntries[1]);
    }

    return_status = 1;

    FUNC7("Writing RM parameters...\n");
    while (return_status) {
        // Write RM parameters.
        // Write in 4 parts to work with tiny driver.
        return_status = 0;

        for (index = 0; index < 4; index++) {
            return_status |= FUNC5(NVMEM_RM_FILEID,
                                         32,
                                         32*index,
                                         (pRMParams + 32*index)); 
        }
    }

    return_status = 1;

    // Write back the MAC address, only if exists.
    if (mac_status == 0) {
        // Zero out MCAST bit if set.
        cMacFromEeprom[0] &= 0xfe;
        FUNC7("Writing back MAC address..\n");
        while (return_status) {
            return_status = FUNC4(cMacFromEeprom);
        }
    }

    // Update driver
    ucStatus_Dr = 1;
    FUNC7("Updating driver patch...\n");
    while (ucStatus_Dr) {
        // Writing driver patch to EEPRROM - PROTABLE CODE
        // Note that the array itself is changing between the
        // different Service Packs.
        ucStatus_Dr = FUNC6(NVMEM_WLAN_DRIVER_SP_FILEID,
                                        drv_length,
                                        wlan_drv_patch);
    }

    // Update firmware
    ucStatus_FW = 1;
    FUNC7("Updating firmware patch...\n");
    while (ucStatus_FW) {
        // Writing FW patch to EEPRROM - PROTABLE CODE
        // Note that the array itself is changing between the
        // different Service Packs.
        ucStatus_FW = FUNC6(NVMEM_WLAN_FW_SP_FILEID,
                                        fw_length,
                                        fw_patch);
    }

    FUNC7("Update complete, resetting module\n"\
           "If this doesn't work, reset manually...\n");

    FUNC9();
    FUNC8(500);

    // Re-Init module and request to load with patches.
    FUNC1(0);

    // If MAC does not exist, it is recommended
    // that the user will write a valid mac address.
    if (mac_status != 0) {
        FUNC7("MAC address is not valid, please write a new one\n");
    }

    // Patch update done
    FUNC7("All done, call wlan.patch_version()\n");
}