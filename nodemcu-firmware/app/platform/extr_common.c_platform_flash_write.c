
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int const uint32_t ;


 int INTERNAL_FLASH_WRITE_UNIT_SIZE ;
 int platform_s_flash_read (char*,int const,int const) ;
 int const platform_s_flash_write (char const*,int const,int const) ;

uint32_t platform_flash_write( const void *from, uint32_t toaddr, uint32_t size )
{

  return platform_s_flash_write( from, toaddr, size );
}
