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
 int /*<<< orphan*/  _ALTER_LAYER ; 
#define  _COLEMA_LAYER 131 
 int /*<<< orphan*/  _COLEMA_LOWER_LAYER ; 
#define  _DVORAK_LAYER 130 
 int /*<<< orphan*/  _DVORAK_LOWER_LAYER ; 
#define  _QWERTY_LAYER 129 
 int /*<<< orphan*/  _QWERTY_LOWER_LAYER ; 
#define  _QWERTZ_LAYER 128 
 int /*<<< orphan*/  _QWERTZ_LOWER_LAYER ; 
 int /*<<< orphan*/  _RAISE_LAYER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t FUNC3(uint32_t state) {
	switch (FUNC0(state)) {
		case _QWERTY_LAYER:
			state = FUNC2(state, _RAISE_LAYER, _QWERTZ_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _COLEMA_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _DVORAK_LOWER_LAYER, _ALTER_LAYER);
			FUNC1(_QWERTY_LAYER);
			break;
		case _QWERTZ_LAYER:
			state = FUNC2(state, _RAISE_LAYER, _QWERTY_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _COLEMA_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _DVORAK_LOWER_LAYER, _ALTER_LAYER);
			FUNC1(_QWERTZ_LAYER);
			break;
		case _COLEMA_LAYER:
			state = FUNC2(state, _RAISE_LAYER, _QWERTY_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _QWERTZ_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _DVORAK_LOWER_LAYER, _ALTER_LAYER);
			FUNC1(_COLEMA_LAYER);
			break;
		case _DVORAK_LAYER:
			state = FUNC2(state, _RAISE_LAYER, _QWERTY_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _QWERTZ_LOWER_LAYER, _ALTER_LAYER);
			state = FUNC2(state, _RAISE_LAYER, _COLEMA_LOWER_LAYER, _ALTER_LAYER);
			FUNC1(_DVORAK_LAYER);
			break;
	}
	return state;
}