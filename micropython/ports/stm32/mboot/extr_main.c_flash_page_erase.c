
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int NbSectors; scalar_t__ Sector; int Banks; int VoltageRange; int TypeErase; } ;
typedef TYPE_1__ FLASH_EraseInitTypeDef ;


 int FLASH_FLAG_ALL_ERRORS_BANK1 ;
 int FLASH_FLAG_ALL_ERRORS_BANK2 ;
 int FLASH_FLAG_EOP ;
 int FLASH_FLAG_OPERR ;
 int FLASH_FLAG_PGAERR ;
 int FLASH_FLAG_PGPERR ;
 int FLASH_FLAG_PGSERR ;
 int FLASH_FLAG_WRPERR ;
 scalar_t__ HAL_FLASHEx_Erase (TYPE_1__*,scalar_t__*) ;
 int HAL_FLASH_Unlock () ;
 scalar_t__ HAL_OK ;
 int TYPEERASE_SECTORS ;
 int VOLTAGE_RANGE_3 ;
 int __HAL_FLASH_CLEAR_FLAG (int) ;
 scalar_t__ flash_get_sector_index (scalar_t__,scalar_t__*) ;
 int get_bank (scalar_t__) ;

__attribute__((used)) static int flash_page_erase(uint32_t addr, uint32_t *next_addr) {
    uint32_t sector_size = 0;
    uint32_t sector = flash_get_sector_index(addr, &sector_size);
    if (sector == 0) {

        return -1;
    }

    *next_addr = addr + sector_size;

    HAL_FLASH_Unlock();





    __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP | FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR |
                           FLASH_FLAG_PGAERR | FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR);



    FLASH_EraseInitTypeDef EraseInitStruct;
    EraseInitStruct.TypeErase = TYPEERASE_SECTORS;
    EraseInitStruct.VoltageRange = VOLTAGE_RANGE_3;



    EraseInitStruct.Sector = sector;
    EraseInitStruct.NbSectors = 1;

    uint32_t SectorError = 0;
    if (HAL_FLASHEx_Erase(&EraseInitStruct, &SectorError) != HAL_OK) {

        return -1;
    }


    for (int i = 0; i < 64; ++i) {
        if (((volatile uint32_t*)addr)[i] != 0xffffffff) {
            return -2;
        }
    }

    return 0;
}
