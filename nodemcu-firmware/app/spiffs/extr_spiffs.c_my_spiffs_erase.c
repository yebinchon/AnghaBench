
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32_t ;
typedef int s32_t ;


 scalar_t__ PLATFORM_ERR ;
 int SPIFFS_ERR_INTERNAL ;
 int SPIFFS_OK ;
 int dbg_printf (char*) ;
 scalar_t__ erase_cnt ;
 scalar_t__ platform_flash_erase_sector (int ) ;
 scalar_t__ platform_flash_get_sector_of_address (scalar_t__) ;

__attribute__((used)) static s32_t my_spiffs_erase(u32_t addr, u32_t size) {
  u32_t sect_first = platform_flash_get_sector_of_address(addr);
  u32_t sect_last = sect_first;
  while( sect_first <= sect_last ) {
    if (erase_cnt >= 0 && (erase_cnt++ & 0xF) == 0) {
      dbg_printf(".");
    }
    if( platform_flash_erase_sector( sect_first ++ ) == PLATFORM_ERR ) {
      return SPIFFS_ERR_INTERNAL;
    }
  }
  return SPIFFS_OK;
}
