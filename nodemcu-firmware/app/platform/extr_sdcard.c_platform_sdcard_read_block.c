
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int CHECK_SSPIN (int ) ;
 int CMD17 ;
 int FALSE ;
 int SD_CARD_ERROR_CMD17 ;
 scalar_t__ SD_CARD_TYPE_SDHC ;
 int m_error ;
 scalar_t__ m_type ;
 int sdcard_chipselect_high () ;
 scalar_t__ sdcard_command (int ,int) ;
 int sdcard_read_data (int *,int) ;

int platform_sdcard_read_block( uint8_t ss_pin, uint32_t block, uint8_t *dst )
{
  CHECK_SSPIN(ss_pin);


  if (m_type != SD_CARD_TYPE_SDHC) {
    block <<= 9;
  }
  if (sdcard_command( CMD17, block )) {
    m_error = SD_CARD_ERROR_CMD17;
    goto fail;
  }
  return sdcard_read_data( dst, 512 );

  fail:
  sdcard_chipselect_high();
  return FALSE;
}
