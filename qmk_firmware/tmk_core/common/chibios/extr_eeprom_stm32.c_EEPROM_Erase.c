
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FEE_DENSITY_PAGES ;
 scalar_t__ FEE_PAGE_BASE_ADDRESS ;
 int FEE_PAGE_SIZE ;
 int FLASH_ErasePage (scalar_t__) ;

void EEPROM_Erase(void) {
    int page_num = 0;


    do {
        FLASH_ErasePage(FEE_PAGE_BASE_ADDRESS + (page_num * FEE_PAGE_SIZE));
        page_num++;
    } while (page_num < FEE_DENSITY_PAGES);
}
