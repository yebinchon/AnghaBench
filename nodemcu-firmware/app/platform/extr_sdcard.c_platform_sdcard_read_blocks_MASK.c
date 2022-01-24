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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD12 ; 
 int /*<<< orphan*/  CMD18 ; 
 int FALSE ; 
 int /*<<< orphan*/  SD_CARD_ERROR_CMD12 ; 
 int /*<<< orphan*/  SD_CARD_ERROR_CMD18 ; 
 scalar_t__ SD_CARD_TYPE_SDHC ; 
 int TRUE ; 
 int /*<<< orphan*/  m_error ; 
 scalar_t__ m_type ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6( uint8_t ss_pin, uint32_t block, size_t num, uint8_t *dst )
{
  FUNC0(ss_pin);

  if (num == 0) {
    return TRUE;
  }
  if (num == 1) {
    return FUNC1( ss_pin, block, dst );
  }

  // generate byte address for pre-SDHC types
  if (m_type != SD_CARD_TYPE_SDHC) {
    block <<= 9;
  }

  // command READ_MULTIPLE_BLOCKS
  if (FUNC4( CMD18, block )) {
    m_error = SD_CARD_ERROR_CMD18;
    goto fail;
  }

  // read required blocks
  while (num > 0) {
    FUNC3();
    if (FUNC5( dst, 512 )) {
      num--;
      dst = &(dst[512]);
    } else {
      break;
    }
  }

  // issue command STOP_TRANSMISSION
  if (FUNC4( CMD12, 0 )) {
    m_error = SD_CARD_ERROR_CMD12;
    goto fail;
  }
  FUNC2();
  return TRUE;

  fail:
  FUNC2();
  return FALSE;
}