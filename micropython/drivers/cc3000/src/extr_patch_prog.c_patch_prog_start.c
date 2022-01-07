
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NVMEM_RM_FILEID ;
 int NVMEM_WLAN_DRIVER_SP_FILEID ;
 int NVMEM_WLAN_FW_SP_FILEID ;
 int * aFATEntries ;
 int* cMacFromEeprom ;
 unsigned char* cRMParamsFromEeprom ;
 scalar_t__ cRMdefaultParams ;
 int counter ;
 int drv_length ;
 int fat_write_content (int ,int ) ;
 int fw_length ;
 int fw_patch ;
 int initDriver (int) ;
 scalar_t__ mac_status ;
 scalar_t__ nvmem_get_mac_address (int*) ;
 int nvmem_read (int ,int,int,unsigned char*) ;
 int nvmem_set_mac_address (int*) ;
 int nvmem_write (int ,int,int,unsigned char*) ;
 int nvmem_write_patch (int ,int ,int ) ;
 int printf (char*) ;
 int return_status ;
 int systick_sleep (int) ;
 int ucStatus_Dr ;
 int ucStatus_FW ;
 int wlan_drv_patch ;
 int wlan_stop () ;

void patch_prog_start()
{
    unsigned short index;
    unsigned char *pRMParams;

    printf("Initializing module...\n");




    initDriver(1);


    mac_status = nvmem_get_mac_address(cMacFromEeprom);

    return_status = 1;

    printf("Reading RM parameters...\n");
    while ((return_status) && (counter < 3)) {


        return_status = 0;
        pRMParams = cRMParamsFromEeprom;
        for (index = 0; index < 16; index++) {
            return_status |= nvmem_read(NVMEM_RM_FILEID, 8, 8*index, pRMParams);
            pRMParams += 8;
        }
        counter++;
    }


    if (counter == 3) {
        printf("RM is not valid, loading default one...\n");
        pRMParams = (unsigned char *)cRMdefaultParams;
    } else {
        printf("RM is valid.\n");
        pRMParams = cRMParamsFromEeprom;
    }

    return_status = 1;

    printf("Writing new FAT\n");
    while (return_status) {

        return_status = fat_write_content(aFATEntries[0], aFATEntries[1]);
    }

    return_status = 1;

    printf("Writing RM parameters...\n");
    while (return_status) {


        return_status = 0;

        for (index = 0; index < 4; index++) {
            return_status |= nvmem_write(NVMEM_RM_FILEID,
                                         32,
                                         32*index,
                                         (pRMParams + 32*index));
        }
    }

    return_status = 1;


    if (mac_status == 0) {

        cMacFromEeprom[0] &= 0xfe;
        printf("Writing back MAC address..\n");
        while (return_status) {
            return_status = nvmem_set_mac_address(cMacFromEeprom);
        }
    }


    ucStatus_Dr = 1;
    printf("Updating driver patch...\n");
    while (ucStatus_Dr) {



        ucStatus_Dr = nvmem_write_patch(NVMEM_WLAN_DRIVER_SP_FILEID,
                                        drv_length,
                                        wlan_drv_patch);
    }


    ucStatus_FW = 1;
    printf("Updating firmware patch...\n");
    while (ucStatus_FW) {



        ucStatus_FW = nvmem_write_patch(NVMEM_WLAN_FW_SP_FILEID,
                                        fw_length,
                                        fw_patch);
    }

    printf("Update complete, resetting module\n" "If this doesn't work, reset manually...\n");


    wlan_stop();
    systick_sleep(500);


    initDriver(0);



    if (mac_status != 0) {
        printf("MAC address is not valid, please write a new one\n");
    }


    printf("All done, call wlan.patch_version()\n");
}
