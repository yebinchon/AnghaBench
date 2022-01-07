
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int CMD0 ;
 int CMD12 ;
 int m_spi_no ;
 int m_status ;
 int platform_spi_send_recv (int ,int,int) ;
 int platform_spi_transaction (int ,int,int,int,int,int ,int ,int ) ;
 int sdcard_chipselect_low () ;
 int sdcard_wait_not_busy (int) ;

__attribute__((used)) static uint8_t sdcard_command( uint8_t cmd, uint32_t arg )
{
  sdcard_chipselect_low();


  sdcard_wait_not_busy( 100 * 1000 );



  const uint8_t crc = cmd == CMD0 ? 0x95 : 0x87;
  platform_spi_transaction( m_spi_no, 16, (cmd | 0x40) << 8 | arg >> 24, 32, arg << 8 | crc, 0, 0, 0 );


  if (cmd == CMD12) {
    platform_spi_transaction( m_spi_no, 8, 0xff, 0, 0, 0, 0, 0 );
  }


  for (uint8_t i = 0; ((m_status = platform_spi_send_recv( m_spi_no, 8, 0xff )) & 0x80) && i != 0xFF; i++) ;

  return m_status;
}
