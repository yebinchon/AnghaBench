
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int CHECK_SSPIN (int ) ;
 int CMD24 ;
 int DATA_START_BLOCK ;
 int FALSE ;
 int SD_CARD_ERROR_CMD24 ;
 scalar_t__ SD_CARD_TYPE_SDHC ;
 int TRUE ;
 int m_error ;
 scalar_t__ m_type ;
 int sdcard_chipselect_high () ;
 scalar_t__ sdcard_command (int ,int) ;
 int sdcard_write_data (int ,int const*) ;

int platform_sdcard_write_block( uint8_t ss_pin, uint32_t block, const uint8_t *src )
{
  CHECK_SSPIN(ss_pin);


  if (m_type != SD_CARD_TYPE_SDHC) {
    block <<= 9;
  }
  if (sdcard_command( CMD24, block )) {
    m_error = SD_CARD_ERROR_CMD24;
    goto fail;
  }
  if (! sdcard_write_data( DATA_START_BLOCK, src )) {
    goto fail;
  }

  sdcard_chipselect_high();
  return TRUE;

  fail:
  sdcard_chipselect_high();
  return FALSE;
}
