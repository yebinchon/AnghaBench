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

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  SD_CARD_ERROR_STOP_TRAN ; 
 int /*<<< orphan*/  STOP_TRAN_TOKEN ; 
 int TRUE ; 
 int /*<<< orphan*/  m_error ; 
 int /*<<< orphan*/  m_spi_no ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4( void )
{
  FUNC2();

  if (! FUNC3( 100 * 1000 )) {
    goto fail;
  }
  FUNC0( m_spi_no, 8, STOP_TRAN_TOKEN, 0, 0, 0, 0, 0 );
  if (! FUNC3( 100 * 1000 )) {
    goto fail;
  }

  FUNC1();
  return TRUE;

  fail:
  m_error = SD_CARD_ERROR_STOP_TRAN;
  FUNC1();
  return FALSE;
}