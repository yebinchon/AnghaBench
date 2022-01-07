
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int to_t ;


 int ACMD41 ;
 int CHECK_SSPIN (int) ;
 int CMD0 ;
 int CMD58 ;
 int CMD8 ;
 int FALSE ;
 int PLATFORM_GPIO_FLOAT ;
 int PLATFORM_GPIO_HIGH ;
 int PLATFORM_GPIO_OUTPUT ;
 int R1_IDLE_STATE ;
 int R1_ILLEGAL_COMMAND ;
 scalar_t__ R1_READY_STATE ;
 scalar_t__ SD_CARD_ERROR_CMD58 ;
 scalar_t__ SD_CARD_TYPE_INVALID ;
 scalar_t__ SD_CARD_TYPE_SD1 ;
 scalar_t__ SD_CARD_TYPE_SD2 ;
 scalar_t__ SD_CARD_TYPE_SDHC ;
 int TRUE ;
 scalar_t__ m_error ;
 int m_spi_no ;
 int m_ss_pin ;
 int m_status ;
 scalar_t__ m_type ;
 int platform_gpio_mode (int ,int ,int ) ;
 int platform_gpio_write (int ,int ) ;
 int platform_spi_send_recv (int,int,int) ;
 int platform_spi_transaction (int,int ,int ,int ,int ,int ,int,int ) ;
 scalar_t__ sdcard_acmd (int ,int) ;
 int sdcard_chipselect_high () ;
 int sdcard_command (int ,int) ;
 int set_timeout (int *,int) ;
 int spi_set_clkdiv (int,int) ;
 scalar_t__ timed_out (int *) ;

int platform_sdcard_init( uint8_t spi_no, uint8_t ss_pin )
{
  uint32_t arg, user_spi_clkdiv;
  to_t to;

  m_type = SD_CARD_TYPE_INVALID;
  m_error = 0;

  if (spi_no > 1) {
    return FALSE;
  }
  m_spi_no = spi_no;
  CHECK_SSPIN(ss_pin);

  platform_gpio_write( m_ss_pin, PLATFORM_GPIO_HIGH );
  platform_gpio_mode( m_ss_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT );


  user_spi_clkdiv = spi_set_clkdiv( m_spi_no, 200 );




  for (int i = 0; i < 2; i++) {
    platform_spi_transaction( m_spi_no, 0, 0, 0, 0, 0, 200, 0 );
  }


  set_timeout( &to, 500 * 1000 );
  while (sdcard_command( CMD0, 0 ) != R1_IDLE_STATE) {
    if (timed_out( &to )) {
      goto fail;
    }
  }

  set_timeout( &to, 500 * 1000 );
  while (1) {
    if (sdcard_command( CMD8, 0x1aa) == (R1_ILLEGAL_COMMAND | R1_IDLE_STATE)) {
      m_type = SD_CARD_TYPE_SD1;
      break;
    }
    for (uint8_t i = 0; i < 4; i++) {
      m_status = platform_spi_send_recv( m_spi_no, 8, 0xff );
    }
    if (m_status == 0xaa) {
      m_type = SD_CARD_TYPE_SD2;
      break;
    }
    if (timed_out( &to )) {
      goto fail;
    }
  }

  arg = m_type == SD_CARD_TYPE_SD2 ? 0x40000000 : 0;

  set_timeout( &to, 500 * 1000 );
  while (sdcard_acmd( ACMD41, arg ) != R1_READY_STATE) {
    if (timed_out( &to )) {
      goto fail;
    }
  }

  if (m_type == SD_CARD_TYPE_SD2) {
    if (sdcard_command( CMD58, 0 )) {
      m_error = SD_CARD_ERROR_CMD58;
      goto fail;
    }
    if ((platform_spi_send_recv( m_spi_no, 8, 0xff ) & 0xC0) == 0xC0) {
      m_type = SD_CARD_TYPE_SDHC;
    }

    for (uint8_t i = 0; i < 3; i++) {
      platform_spi_send_recv( m_spi_no, 8, 0xff);
    }
  }
  sdcard_chipselect_high();


  spi_set_clkdiv( m_spi_no, user_spi_clkdiv );

  return TRUE;

  fail:
  sdcard_chipselect_high();
  return FALSE;
}
