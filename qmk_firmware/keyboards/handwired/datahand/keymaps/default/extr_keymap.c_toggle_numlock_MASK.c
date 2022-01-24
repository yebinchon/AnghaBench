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
 int /*<<< orphan*/  LED_NUM_LOCK ; 
 int /*<<< orphan*/  NAS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int numlock_enabled ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void) {
  numlock_enabled = !numlock_enabled;
  FUNC1(numlock_enabled, LED_NUM_LOCK);
  
  if (FUNC0(NAS)) {
    /* If we're already in NAS, re-set it so that we activate the numlock layer. */
    FUNC2(true);
  }
}