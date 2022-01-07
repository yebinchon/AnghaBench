
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ type; int addr; } ;
typedef TYPE_1__ partition_item_t ;
typedef int header ;


 int INIT_DATA_SIZE ;
 int INTERNAL_FLASH_SECTOR_SIZE ;
 scalar_t__ PLATFORM_OK ;
 int PLATFORM_RCR_PHY_DATA ;
 scalar_t__ SYSTEM_PARTITION_PHY_DATA ;
 int init_data ;
 int os_printf (char*,int) ;
 scalar_t__ platform_flash_erase_sector (int) ;
 int platform_rcr_write (int ,int*,int ) ;
 int platform_s_flash_read (int*,int,int) ;
 int platform_s_flash_write (int ,int,int ) ;

__attribute__((used)) static void phy_data_setup (partition_item_t *pt, uint32_t n) {
    uint8_t header[sizeof(uint32_t)] = {0};
    int i;

    for (i = 0; i < n; i++) {
        if (pt[i].type == SYSTEM_PARTITION_PHY_DATA) {
            uint32_t addr = pt[i].addr;
            platform_s_flash_read(header, addr, sizeof(header));
            if (header[0] != 0x05) {
                uint32_t sector = pt[i].addr/INTERNAL_FLASH_SECTOR_SIZE;
                if (platform_flash_erase_sector(sector) == PLATFORM_OK) {
                    os_printf("Writing Init Data to 0x%08x\n",addr);
                    platform_s_flash_write(init_data, addr, INIT_DATA_SIZE);
                }
            }

            platform_rcr_write(PLATFORM_RCR_PHY_DATA, &addr, 0);
            return;
        }
    }


}
