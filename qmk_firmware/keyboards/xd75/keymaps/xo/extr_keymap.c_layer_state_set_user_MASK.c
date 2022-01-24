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
 int /*<<< orphan*/  BASE_COLOR ; 
 int /*<<< orphan*/  RGB_AZURE ; 
 int /*<<< orphan*/  RGB_PURPLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

layer_state_t FUNC2(layer_state_t state) {
  switch (FUNC0(state)) {
    case 0:
      FUNC1(BASE_COLOR);
      break;
    case 1:
      FUNC1(RGB_AZURE);
      break;
    case 2:
      FUNC1(RGB_PURPLE);
      break;
    }
  return state;
}