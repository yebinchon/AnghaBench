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

/* Variables and functions */
 int CMD0 ; 
 int CMD12 ; 
 int /*<<< orphan*/  m_spi_no ; 
 int m_status ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static uint8_t FUNC4( uint8_t cmd, uint32_t arg )
{
  FUNC2();

  // wait until card is busy
  FUNC3( 100 * 1000 );

  // send command
  // with precalculated CRC - correct for CMD0 with arg zero or CMD8 with arg 0x1AA
  const uint8_t crc = cmd == CMD0 ? 0x95 : 0x87;
  FUNC1( m_spi_no, 16, (cmd | 0x40) << 8 | arg >> 24, 32, arg << 8 | crc, 0, 0, 0 );

  // skip dangling byte of data transfer
  if (cmd == CMD12) {
    FUNC1( m_spi_no, 8, 0xff, 0, 0, 0, 0, 0 );
  }

  // wait for response
  for (uint8_t i = 0; ((m_status = FUNC0( m_spi_no, 8, 0xff )) & 0x80) && i != 0xFF; i++) ;

  return m_status;
}