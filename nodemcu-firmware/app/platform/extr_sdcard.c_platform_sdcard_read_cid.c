
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CHECK_SSPIN (int ) ;
 int CMD10 ;
 int sdcard_read_register (int ,int *) ;

int platform_sdcard_read_cid( uint8_t ss_pin, uint8_t *cid )
{
  CHECK_SSPIN(ss_pin);

  return sdcard_read_register( CMD10, cid );
}
