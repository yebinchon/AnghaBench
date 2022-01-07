
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ACMD23 ;
 int CHECK_SSPIN (int ) ;
 int CMD25 ;
 int FALSE ;
 int SD_CARD_ERROR_ACMD23 ;
 int SD_CARD_ERROR_CMD25 ;
 int SD_CARD_ERROR_WRITE_MULTIPLE ;
 scalar_t__ SD_CARD_TYPE_SDHC ;
 int WRITE_MULTIPLE_TOKEN ;
 int m_error ;
 scalar_t__ m_type ;
 scalar_t__ sdcard_acmd (int ,size_t) ;
 int sdcard_chipselect_high () ;
 int sdcard_chipselect_low () ;
 scalar_t__ sdcard_command (int ,int) ;
 int sdcard_wait_not_busy (int) ;
 int sdcard_write_data (int ,int const*) ;
 int sdcard_write_stop () ;

int platform_sdcard_write_blocks( uint8_t ss_pin, uint32_t block, size_t num, const uint8_t *src )
{
  CHECK_SSPIN(ss_pin);

  if (sdcard_acmd( ACMD23, num )) {
    m_error = SD_CARD_ERROR_ACMD23;
    goto fail;
  }

  if (m_type != SD_CARD_TYPE_SDHC) {
    block <<= 9;
  }
  if (sdcard_command( CMD25, block )) {
    m_error = SD_CARD_ERROR_CMD25;
    goto fail;
  }
  sdcard_chipselect_high();

  for (size_t b = 0; b < num; b++, src += 512) {
    sdcard_chipselect_low();


    if (! sdcard_wait_not_busy( 100 * 1000 )) {
      goto fail_write;
    }
    if (! sdcard_write_data( WRITE_MULTIPLE_TOKEN, src )) {
      goto fail_write;
    }

    sdcard_chipselect_high();
  }

  return sdcard_write_stop();

  fail_write:
  m_error = SD_CARD_ERROR_WRITE_MULTIPLE;
  fail:
  sdcard_chipselect_high();
  return FALSE;
}
