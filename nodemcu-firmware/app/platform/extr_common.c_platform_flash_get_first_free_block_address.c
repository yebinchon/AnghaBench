
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int NODE_DBG (char*,scalar_t__) ;
 scalar_t__ _flash_used_end ;
 scalar_t__ flash_find_sector (int ,scalar_t__*,scalar_t__*) ;
 int platform_flash_mapped2phys (scalar_t__) ;

uint32_t platform_flash_get_first_free_block_address( uint32_t *psect )
{

  uint32_t start, end, sect;
  NODE_DBG("_flash_used_end:%08x\n", (uint32_t)_flash_used_end);
  if(_flash_used_end>0){
    sect = flash_find_sector( platform_flash_mapped2phys ( (uint32_t)_flash_used_end - 1), ((void*)0), &end );
    if( psect )
      *psect = sect + 1;
    return end + 1;
  } else {
    sect = flash_find_sector( 0, &start, ((void*)0) );
    if( psect )
      *psect = sect;
    return start;
  }
}
