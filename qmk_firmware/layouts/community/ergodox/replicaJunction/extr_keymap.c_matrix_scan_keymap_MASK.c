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
typedef  int uint8_t ;

/* Variables and functions */
#define  L_COLEMAK 132 
#define  L_EXTEND 131 
#define  L_FUNC 130 
#define  L_GAMING 129 
#define  L_NUM 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC8(void) {

    uint8_t layer = FUNC0(layer_state);
    // uint8_t default_layer = biton32(layer_state);

    FUNC1();

    switch (layer) {
        case L_COLEMAK:
            FUNC3();
            FUNC4();
            FUNC6();
            break;
        case L_NUM:
            FUNC3();
            FUNC5();
            FUNC6();
            break;
        case L_EXTEND:
            FUNC3();
            FUNC4();
            FUNC7();
            break;
        case L_FUNC:
            FUNC3();
            FUNC5();
            FUNC7();
            break;
        case L_GAMING:
            FUNC2();
            FUNC5();
            FUNC7();
            break;
        default:
            // none
            break;
    }

}