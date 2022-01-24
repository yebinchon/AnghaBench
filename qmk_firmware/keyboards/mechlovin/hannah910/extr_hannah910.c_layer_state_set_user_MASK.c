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
 int /*<<< orphan*/  D0 ; 
 int /*<<< orphan*/  D1 ; 
 int /*<<< orphan*/  D2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint32_t FUNC3(uint32_t state)
{
  // if on layer 1, turn on D2 LED, otherwise off.
    if (FUNC0(state) == 1) {
        FUNC1(D2);
    } else {
        FUNC2(D2);
    }
  // if on layer 2, turn on D1 LED, otherwise off.
    if (FUNC0(state) == 2) {
        FUNC1(D1);
    } else {
        FUNC2(D1);
    }

  // if on layer 3, turn on D0 LED, otherwise off.
    if (FUNC0(state) == 3) {
        FUNC1(D0);
    } else {
        FUNC2(D0);
    }

    return state;
}