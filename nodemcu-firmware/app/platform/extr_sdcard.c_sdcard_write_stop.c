
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SD_CARD_ERROR_STOP_TRAN ;
 int STOP_TRAN_TOKEN ;
 int TRUE ;
 int m_error ;
 int m_spi_no ;
 int platform_spi_transaction (int ,int,int ,int ,int ,int ,int ,int ) ;
 int sdcard_chipselect_high () ;
 int sdcard_chipselect_low () ;
 int sdcard_wait_not_busy (int) ;

__attribute__((used)) static int sdcard_write_stop( void )
{
  sdcard_chipselect_low();

  if (! sdcard_wait_not_busy( 100 * 1000 )) {
    goto fail;
  }
  platform_spi_transaction( m_spi_no, 8, STOP_TRAN_TOKEN, 0, 0, 0, 0, 0 );
  if (! sdcard_wait_not_busy( 100 * 1000 )) {
    goto fail;
  }

  sdcard_chipselect_high();
  return TRUE;

  fail:
  m_error = SD_CARD_ERROR_STOP_TRAN;
  sdcard_chipselect_high();
  return FALSE;
}
