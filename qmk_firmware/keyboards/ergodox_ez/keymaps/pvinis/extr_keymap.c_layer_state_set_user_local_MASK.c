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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
#define  LR_KBCTL 130 
#define  LR_SYMBOL 129 
#define  LR_SYSCTL 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint32_t FUNC7(uint32_t state) {
  FUNC1();
  FUNC3();
  FUNC5();
  switch (FUNC0(state)) {
  case LR_SYSCTL:
    FUNC6(); // blue
    break;
  case LR_KBCTL:
    FUNC2(); // red
    break;
  case LR_SYMBOL:
    FUNC4(); // green
    break;
  default: break;
  }
  return state;
}