
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int to_t ;


 int DATA_START_BLOCK ;
 int FALSE ;
 int SD_CARD_ERROR_READ ;
 int TRUE ;
 int m_error ;
 int m_spi_no ;
 int m_status ;
 int platform_spi_blkread (int ,size_t,void*) ;
 int platform_spi_send_recv (int ,int,int) ;
 int platform_spi_transaction (int ,int,int,int ,int ,int ,int ,int ) ;
 int sdcard_chipselect_high () ;
 int set_timeout (int *,int) ;
 scalar_t__ timed_out (int *) ;

__attribute__((used)) static int sdcard_read_data( uint8_t *dst, size_t count )
{
  to_t to;


  set_timeout( &to, 100 * 1000 );
  while ((m_status = platform_spi_send_recv( m_spi_no, 8, 0xff)) == 0xff) {
    if (timed_out( &to )) {
      goto fail;
    }
  }

  if (m_status != DATA_START_BLOCK) {
    m_error = SD_CARD_ERROR_READ;
    goto fail;
  }

  platform_spi_blkread( m_spi_no, count, (void *)dst );


  platform_spi_transaction( m_spi_no, 16, 0xffff, 0, 0, 0, 0, 0 );

  sdcard_chipselect_high();
  return TRUE;

  fail:
  sdcard_chipselect_high();
  return FALSE;
}
