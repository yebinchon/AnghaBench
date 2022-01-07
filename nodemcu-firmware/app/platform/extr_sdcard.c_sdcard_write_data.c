
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int DATA_RES_ACCEPTED ;
 int DATA_RES_MASK ;
 int FALSE ;
 int SD_CARD_ERROR_WRITE ;
 int TRUE ;
 int m_error ;
 int m_spi_no ;
 int m_status ;
 int platform_spi_blkwrite (int ,int,int const*) ;
 int platform_spi_send_recv (int ,int,int) ;
 int platform_spi_transaction (int ,int,int,int ,int ,int ,int ,int ) ;
 int sdcard_chipselect_high () ;

__attribute__((used)) static int sdcard_write_data( uint8_t token, const uint8_t *src)
{
  uint16_t crc = 0xffff;

  platform_spi_transaction( m_spi_no, 8, token, 0, 0, 0, 0, 0 );
  platform_spi_blkwrite( m_spi_no, 512, src );
  platform_spi_transaction( m_spi_no, 16, crc, 0, 0, 0, 0, 0 );

  m_status = platform_spi_send_recv( m_spi_no, 8, 0xff );
  if ((m_status & DATA_RES_MASK) != DATA_RES_ACCEPTED) {
    m_error = SD_CARD_ERROR_WRITE;
    goto fail;
  }
  return TRUE;

  fail:
  sdcard_chipselect_high();
  return FALSE;
}
