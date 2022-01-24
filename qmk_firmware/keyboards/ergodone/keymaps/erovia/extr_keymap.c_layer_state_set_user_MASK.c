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
 scalar_t__ CAPS_LED ; 
#define  FN 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

uint32_t FUNC5(uint32_t state) {
    FUNC3();
    switch (FUNC0(state)) {
      case FN:
          // Red led on Pro Micro for Fn layer
          FUNC2();
          break;
    };

    if (CAPS_LED) {
      FUNC4();
    }

    FUNC1();

    return state;
}