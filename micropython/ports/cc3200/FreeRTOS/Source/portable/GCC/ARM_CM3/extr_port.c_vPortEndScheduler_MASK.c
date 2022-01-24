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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long uxCriticalNesting ; 

void FUNC1( void )
{
	/* Not implemented in ports where there is nothing to return to.
	Artificially force an assert. */
	FUNC0( uxCriticalNesting == 1000UL );
}