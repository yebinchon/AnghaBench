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
#define  COLEMAK 129 
#define  QWERTY 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void) {
    switch (FUNC0(FUNC1())) {
      case COLEMAK:
        // LED2 for COLEMAK
        FUNC2();
        break;
      case QWERTY:
        // LED3 for QWERTY
        FUNC3();
        break;
    };
}