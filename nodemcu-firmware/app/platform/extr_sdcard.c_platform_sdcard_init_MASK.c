#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  to_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACMD41 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CMD0 ; 
 int /*<<< orphan*/  CMD58 ; 
 int /*<<< orphan*/  CMD8 ; 
 int FALSE ; 
 int /*<<< orphan*/  PLATFORM_GPIO_FLOAT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_HIGH ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
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
 int /*<<< orphan*/  m_ss_pin ; 
 int m_status ; 
 scalar_t__ m_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11( uint8_t spi_no, uint8_t ss_pin )
{
  uint32_t arg, user_spi_clkdiv;
  to_t to;

  m_type = SD_CARD_TYPE_INVALID;
  m_error = 0;

  if (spi_no > 1) {
    return FALSE;
  }
  m_spi_no = spi_no;
  FUNC0(ss_pin);

  FUNC2( m_ss_pin, PLATFORM_GPIO_HIGH );
  FUNC1( m_ss_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT );

  // set SPI clock to 400 kHz for init phase
  user_spi_clkdiv = FUNC9( m_spi_no, 200 );

  // apply initialization sequence:
  // keep ss and io high, apply clock for max(1ms; 74cc)
  // 1ms requires 400cc @ 400kHz
  for (int i = 0; i < 2; i++) {
    FUNC4( m_spi_no, 0, 0, 0, 0, 0, 200, 0 );
  }

  // command to go idle in SPI mode
  FUNC8( &to, 500 * 1000 );
  while (FUNC7( CMD0, 0 ) != R1_IDLE_STATE) {
    if (FUNC10( &to )) {
      goto fail;
    }
  }

  FUNC8( &to, 500 * 1000 );
  while (1) {
    if (FUNC7( CMD8, 0x1aa) == (R1_ILLEGAL_COMMAND | R1_IDLE_STATE)) {
      m_type = SD_CARD_TYPE_SD1;
      break;
    }
    for (uint8_t i = 0; i < 4; i++) {
      m_status = FUNC3( m_spi_no, 8, 0xff );
    }
    if (m_status == 0xaa) {
      m_type = SD_CARD_TYPE_SD2;
      break;
    }
    if (FUNC10( &to )) {
      goto fail;
    }
  }
  // initialize card and send host supports SDHC if SD2
  arg = m_type == SD_CARD_TYPE_SD2 ? 0x40000000 : 0;

  FUNC8( &to, 500 * 1000 );
  while (FUNC5( ACMD41, arg ) != R1_READY_STATE) {
    if (FUNC10( &to )) {
      goto fail;
    }
  }
  // if SD2 read OCR register to check for SDHC card
  if (m_type == SD_CARD_TYPE_SD2) {
    if (FUNC7( CMD58, 0 )) {
      m_error = SD_CARD_ERROR_CMD58;
      goto fail;
    }
    if ((FUNC3( m_spi_no, 8, 0xff ) & 0xC0) == 0xC0) {
      m_type = SD_CARD_TYPE_SDHC;
    }
    // Discard rest of ocr - contains allowed voltage range.
    for (uint8_t i = 0; i < 3; i++) {
      FUNC3( m_spi_no, 8, 0xff);
    }
  }
  FUNC6();

  // re-apply user's spi clock divider
  FUNC9( m_spi_no, user_spi_clkdiv );

  return TRUE;

  fail:
  FUNC6();
  return FALSE;
}