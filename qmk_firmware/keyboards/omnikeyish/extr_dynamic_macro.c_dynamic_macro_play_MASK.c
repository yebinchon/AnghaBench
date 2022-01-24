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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {size_t length; int /*<<< orphan*/ * events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 TYPE_1__* dynamic_macros ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(uint8_t macro_id) {
  FUNC1("dynamic macro: slot %d playback, length %d\n", macro_id, dynamic_macros[macro_id].length);

  uint32_t saved_layer_state = layer_state;

  FUNC0();
  FUNC2();

  for (uint8_t i = 0; i < dynamic_macros[macro_id].length; ++i) {
    FUNC3(&dynamic_macros[macro_id].events[i]);
  }

  FUNC0();

  layer_state = saved_layer_state;
}