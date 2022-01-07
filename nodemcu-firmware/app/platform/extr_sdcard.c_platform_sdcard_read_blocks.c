
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int CHECK_SSPIN (int ) ;
 int CMD12 ;
 int CMD18 ;
 int FALSE ;
 int SD_CARD_ERROR_CMD12 ;
 int SD_CARD_ERROR_CMD18 ;
 scalar_t__ SD_CARD_TYPE_SDHC ;
 int TRUE ;
 int m_error ;
 scalar_t__ m_type ;
 int platform_sdcard_read_block (int ,int,int *) ;
 int sdcard_chipselect_high () ;
 int sdcard_chipselect_low () ;
 scalar_t__ sdcard_command (int ,int) ;
 scalar_t__ sdcard_read_data (int *,int) ;

int platform_sdcard_read_blocks( uint8_t ss_pin, uint32_t block, size_t num, uint8_t *dst )
{
  CHECK_SSPIN(ss_pin);

  if (num == 0) {
    return TRUE;
  }
  if (num == 1) {
    return platform_sdcard_read_block( ss_pin, block, dst );
  }


  if (m_type != SD_CARD_TYPE_SDHC) {
    block <<= 9;
  }


  if (sdcard_command( CMD18, block )) {
    m_error = SD_CARD_ERROR_CMD18;
    goto fail;
  }


  while (num > 0) {
    sdcard_chipselect_low();
    if (sdcard_read_data( dst, 512 )) {
      num--;
      dst = &(dst[512]);
    } else {
      break;
    }
  }


  if (sdcard_command( CMD12, 0 )) {
    m_error = SD_CARD_ERROR_CMD12;
    goto fail;
  }
  sdcard_chipselect_high();
  return TRUE;

  fail:
  sdcard_chipselect_high();
  return FALSE;
}
