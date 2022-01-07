
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FALSE ;
 int SD_CARD_ERROR_READ_REG ;
 int m_error ;
 int sdcard_chipselect_high () ;
 scalar_t__ sdcard_command (int ,int ) ;
 int sdcard_read_data (int *,int) ;

__attribute__((used)) static int sdcard_read_register( uint8_t cmd, uint8_t *buf )
{
  if (sdcard_command( cmd, 0 )) {
    m_error = SD_CARD_ERROR_READ_REG;
    goto fail;
  }
  return sdcard_read_data( buf, 16 );

  fail:
  sdcard_chipselect_high();
  return FALSE;
}
