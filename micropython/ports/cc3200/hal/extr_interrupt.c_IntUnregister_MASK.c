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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IntDefaultHandler ; 
 unsigned long NUM_INTERRUPTS ; 
 int /*<<< orphan*/  NVIC_VTABLE ; 

void
FUNC2(unsigned long ulInterrupt)
{
  unsigned long *ulNvicTbl;

  //
  // Check the arguments.
  //
  FUNC0(ulInterrupt < NUM_INTERRUPTS);

  ulNvicTbl = (unsigned long *)FUNC1(NVIC_VTABLE);
  ulNvicTbl[ulInterrupt]= (unsigned long)IntDefaultHandler;
}