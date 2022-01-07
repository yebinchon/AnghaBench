
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32_t ;
typedef int s32_t ;


 int SPIFFS_OK ;
 scalar_t__ flash ;
 int memset (scalar_t__,int,scalar_t__) ;

__attribute__((used)) static s32_t flash_erase (u32_t addr, u32_t size) {
  memset (flash + addr, 0xff, size);
  return SPIFFS_OK;
}
