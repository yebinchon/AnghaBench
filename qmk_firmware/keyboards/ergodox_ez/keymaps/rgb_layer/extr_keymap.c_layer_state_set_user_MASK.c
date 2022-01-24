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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  rgb_layer_change; } ;

/* Variables and functions */
#define  MDIA 129 
#define  SYMB 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_1__ user_config ; 

uint32_t FUNC17(uint32_t state) {
  FUNC1();
  FUNC2();
  FUNC4();
  FUNC6();
  switch (FUNC0(state)) {
    case SYMB:
        FUNC3();
        if (user_config.rgb_layer_change) { FUNC14(); FUNC8(1); }
        break;
    case MDIA:
        FUNC5();
        if (user_config.rgb_layer_change) { FUNC11(); FUNC8(1); }
        break;
    case 3:
        FUNC7();
        if (user_config.rgb_layer_change) { FUNC9(); FUNC8(1); }
        break;
    case 4:
        FUNC3();
        FUNC5();
        if (user_config.rgb_layer_change) { FUNC12(); FUNC8(1); }
        break;
    case 5:
        FUNC3();
        FUNC7();
        if (user_config.rgb_layer_change) { FUNC16(); FUNC8(1); }
        break;
    case 6:
        FUNC5();
        FUNC7();
        if (user_config.rgb_layer_change) { FUNC13(); FUNC8(1); }
        break;
    case 7:
        FUNC3();
        FUNC5();
        FUNC7();
        if (user_config.rgb_layer_change) { FUNC15(); FUNC8(1); }
        break;
    default: //  for any other layers, or the default layer
        if (user_config.rgb_layer_change) { FUNC10(); FUNC8(1); }
        break;
    }
  return state;
}