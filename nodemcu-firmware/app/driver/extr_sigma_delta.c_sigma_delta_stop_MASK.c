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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GPIO_SIGMA_DELTA ; 
 int /*<<< orphan*/  GPIO_SIGMA_DELTA_DISABLE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

void FUNC4( void )
{
    FUNC0(GPIO_SIGMA_DELTA,
                   FUNC2(GPIO_SIGMA_DELTA_DISABLE) |
                   FUNC3(0x00) |
                   FUNC1(0x00) );
}