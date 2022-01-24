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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ disable_layer_color ; 
 scalar_t__ g_suspend_state ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void) {
  if (g_suspend_state || disable_layer_color) { return; }
  switch (FUNC0(layer_state)) {
    case 0:
      FUNC1(0);
      break;
    case 1:
      FUNC1(1);
      break;
    case 2:
      FUNC1(2);
      break;
    case 4:
      FUNC1(4);
      break;
  }
}