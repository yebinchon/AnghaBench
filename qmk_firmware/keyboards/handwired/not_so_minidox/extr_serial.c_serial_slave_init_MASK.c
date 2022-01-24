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
 int EICRA ; 
 int EIMSK ; 
 int /*<<< orphan*/  INT0 ; 
 int /*<<< orphan*/  ISC00 ; 
 int /*<<< orphan*/  ISC01 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void) {
  FUNC1();

  // Enable INT0
  EIMSK |= FUNC0(INT0);
  // Trigger on falling edge of INT0
  EICRA &= ~(FUNC0(ISC00) | FUNC0(ISC01));
}