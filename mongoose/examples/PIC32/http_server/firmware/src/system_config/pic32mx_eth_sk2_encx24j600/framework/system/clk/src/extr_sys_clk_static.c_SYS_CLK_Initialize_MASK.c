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
typedef  int /*<<< orphan*/  SYS_CLK_INIT ;

/* Variables and functions */
 int /*<<< orphan*/  OSC_FRC_DIV_2 ; 
 int /*<<< orphan*/  OSC_ID_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4( const SYS_CLK_INIT const * clkInit )
{
    FUNC3 ( );

    FUNC0( OSC_ID_0, OSC_FRC_DIV_2);

    /* Enable Peripheral Bus 1 */
    FUNC1 (OSC_ID_0, 0, 1 );







    FUNC2 ( );
}