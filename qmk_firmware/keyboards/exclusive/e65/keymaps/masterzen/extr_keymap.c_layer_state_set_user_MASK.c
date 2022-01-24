#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  val; int /*<<< orphan*/  sat; int /*<<< orphan*/  hue; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ BASE ; 
#define  _ADJUST 128 
 int FUNC0 (scalar_t__) ; 
 int edit ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 TYPE_1__ temp_config ; 

uint32_t FUNC9(uint32_t state) {
    if (state == BASE && edit == true) {
        temp_config.hue  = FUNC1();
        temp_config.sat  = FUNC3();
        temp_config.val  = FUNC4();
        edit = false;
    }

    switch (FUNC0(state)) {
        case _ADJUST:
            temp_config.mode = FUNC2();
            FUNC6(1);
            FUNC8(0xD3, 0x7F, 0xED);
            edit = true;
            break;
        default:
            FUNC5(temp_config.mode);
            FUNC7(temp_config.hue, temp_config.sat, temp_config.val);
            break;
    }
    return state;
}