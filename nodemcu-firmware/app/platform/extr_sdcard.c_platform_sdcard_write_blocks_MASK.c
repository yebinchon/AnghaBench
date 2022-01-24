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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACMD23 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD25 ; 
 int FALSE ; 
 int /*<<< orphan*/  SD_CARD_ERROR_ACMD23 ; 
 int /*<<< orphan*/  SD_CARD_ERROR_CMD25 ; 
 int /*<<< orphan*/  SD_CARD_ERROR_WRITE_MULTIPLE ; 
 scalar_t__ SD_CARD_TYPE_SDHC ; 
 int /*<<< orphan*/  WRITE_MULTIPLE_TOKEN ; 
 int /*<<< orphan*/  m_error ; 
 scalar_t__ m_type ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC7 () ; 

int FUNC8( uint8_t ss_pin, uint32_t block, size_t num, const uint8_t *src )
{
  FUNC0(ss_pin);

  if (FUNC1( ACMD23, num )) {
    m_error = SD_CARD_ERROR_ACMD23;
    goto fail;
  }
  // generate byte address for pre-SDHC types
  if (m_type != SD_CARD_TYPE_SDHC) {
    block <<= 9;
  }
  if (FUNC4( CMD25, block )) {
    m_error = SD_CARD_ERROR_CMD25;
    goto fail;
  }
  FUNC2();

  for (size_t b = 0; b < num; b++, src += 512) {
    FUNC3();

    // wait for previous write to finish
    if (! FUNC5( 100 * 1000 )) {
      goto fail_write;
    }
    if (! FUNC6( WRITE_MULTIPLE_TOKEN, src )) {
      goto fail_write;
    }

    FUNC2();
  }

  return FUNC7();

  fail_write:
  m_error = SD_CARD_ERROR_WRITE_MULTIPLE;
  fail:
  FUNC2();
  return FALSE;
}