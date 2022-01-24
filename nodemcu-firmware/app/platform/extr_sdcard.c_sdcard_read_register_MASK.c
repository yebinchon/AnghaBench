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

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  SD_CARD_ERROR_READ_REG ; 
 int /*<<< orphan*/  m_error ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3( uint8_t cmd, uint8_t *buf )
{
  if (FUNC1( cmd, 0 )) {
    m_error = SD_CARD_ERROR_READ_REG;
    goto fail;
  }
  return FUNC2( buf, 16 );

  fail:
  FUNC0();
  return FALSE;
}