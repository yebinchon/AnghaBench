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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

void FUNC3(void) {
  static uint8_t old_layer = 255;
  uint8_t new_layer = FUNC0(layer_state);

  if (old_layer != new_layer) {
    switch (new_layer) {
    case 0:
      FUNC1(1);
      FUNC2(0xFF, 0xFF, 0xFF);
      break;
    case 1:
      FUNC1(18);
      FUNC2(0x00, 0xFF, 0xFF);
      break;
    }

    old_layer = new_layer;
  }
}