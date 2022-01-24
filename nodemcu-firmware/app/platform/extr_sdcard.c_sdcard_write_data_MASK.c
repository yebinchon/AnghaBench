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
typedef  int uint16_t ;

/* Variables and functions */
 int DATA_RES_ACCEPTED ; 
 int DATA_RES_MASK ; 
 int FALSE ; 
 int /*<<< orphan*/  SD_CARD_ERROR_WRITE ; 
 int TRUE ; 
 int /*<<< orphan*/  m_error ; 
 int /*<<< orphan*/  m_spi_no ; 
 int m_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4( uint8_t token, const uint8_t *src)
{
  uint16_t crc = 0xffff;

  FUNC2( m_spi_no, 8, token, 0, 0, 0, 0, 0 );
  FUNC0( m_spi_no, 512, src );
  FUNC2( m_spi_no, 16, crc, 0, 0, 0, 0, 0 );

  m_status = FUNC1( m_spi_no, 8, 0xff );
  if ((m_status & DATA_RES_MASK) != DATA_RES_ACCEPTED) {
    m_error = SD_CARD_ERROR_WRITE;
    goto fail;
  }
  return TRUE;

  fail:
  FUNC3();
  return FALSE;
}