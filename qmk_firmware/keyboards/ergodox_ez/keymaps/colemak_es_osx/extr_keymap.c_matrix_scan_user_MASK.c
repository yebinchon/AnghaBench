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
 int /*<<< orphan*/  FN ; 
 int /*<<< orphan*/  MOUSE ; 
 int /*<<< orphan*/  NUM ; 
 int /*<<< orphan*/  QWERTY ; 
 int /*<<< orphan*/  default_layer_state ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void) {

    FUNC0();
    FUNC2();
    FUNC4();
    FUNC6();

    if(FUNC1(default_layer_state, QWERTY)) {
        FUNC7();
    }

    if(FUNC1(default_layer_state, FN)) {
        FUNC5();
    }

    if(FUNC1(default_layer_state, NUM)) {
        FUNC5();
        FUNC7();
    }

    if(FUNC1(default_layer_state, MOUSE)) {
        FUNC3();
    }
}