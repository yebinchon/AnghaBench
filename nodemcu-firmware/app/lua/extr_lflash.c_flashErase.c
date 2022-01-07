
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FLASH_PAGES ;
 int NODE_DBG (char*,scalar_t__,scalar_t__) ;
 scalar_t__ flashSector ;
 int platform_flash_erase_sector (scalar_t__) ;

__attribute__((used)) static void flashErase(uint32_t start, uint32_t end){
  int i;
  if (start == -1) start = FLASH_PAGES - 1;
  if (end == -1) end = FLASH_PAGES - 1;
  NODE_DBG("flashErase(%04x,%04x)\n", flashSector+start, flashSector+end);
  for (i = start; i<=end; i++)
    platform_flash_erase_sector( flashSector + i );
}
