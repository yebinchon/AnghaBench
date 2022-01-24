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
typedef  int /*<<< orphan*/  layer_state_t ;

/* Variables and functions */
#define  _GAME 130 
#define  _LOWER 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

layer_state_t FUNC3(layer_state_t state) {
    switch (FUNC0(state)) {
    case _RAISE:
        FUNC2 (0xC3,  0xFF, 0xFF);
		FUNC1(5);
        break;
    case _LOWER:
        FUNC2 (0xFF, 0xFF, 0xFF);
		FUNC1(5);
        break;
    case _GAME:
        FUNC1(8);
        break;
    default: //  for any other layers, or the default layer
        FUNC1(14);
        break;
    }
  return state;
}