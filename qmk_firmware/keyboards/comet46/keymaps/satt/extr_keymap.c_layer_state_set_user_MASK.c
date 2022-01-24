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
 int /*<<< orphan*/  _ADJUST ; 
 int const _LOWER ; 
#define  _PSEUDO_US_LOWER 129 
#define  _PSEUDO_US_RAISE 128 
 int const _RAISE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/ ) ; 

uint32_t FUNC2(uint32_t state) {
  switch (FUNC0(state)) {
    case _PSEUDO_US_LOWER:
    case _PSEUDO_US_RAISE:
      return FUNC1(state, _PSEUDO_US_RAISE, _PSEUDO_US_LOWER, _ADJUST);
      break;
    default:
      return FUNC1(state, _RAISE, _LOWER, _ADJUST);
      break;
  }
}