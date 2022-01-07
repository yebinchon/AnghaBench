
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int flash_find_sector (int ,int *,int *) ;

uint32_t platform_flash_get_sector_of_address( uint32_t addr )
{
  return flash_find_sector( addr, ((void*)0), ((void*)0) );
}
