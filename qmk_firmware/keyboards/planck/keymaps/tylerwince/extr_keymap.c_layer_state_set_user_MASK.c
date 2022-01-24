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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOB ; 
#define  _ADJUST 130 
#define  _LOWER 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const,int const,int const) ; 

uint32_t FUNC4(uint32_t state) {
    FUNC1(GPIOB, 8);
    FUNC1(GPIOB, 9);
    uint8_t layer = FUNC0(state);
    switch (layer) {
        case _LOWER:
            FUNC2(GPIOB, 9);
            break;
        case _RAISE:
            FUNC2(GPIOB, 8);
            break;
        case _ADJUST:
            FUNC2(GPIOB, 9);
            FUNC2(GPIOB, 8);
            break;
        default:
            break;
    }
    return FUNC3(state, _LOWER, _RAISE, _ADJUST);
}