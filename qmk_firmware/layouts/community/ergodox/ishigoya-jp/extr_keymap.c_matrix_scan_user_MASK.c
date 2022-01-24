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
 int /*<<< orphan*/  default_layer_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC7(void) {

	uint8_t layer = FUNC0(layer_state);
   uint8_t deflayer = FUNC0(default_layer_state);

	FUNC1();
	FUNC2();
	FUNC4();
	FUNC5();
    
  
	switch (layer) {
		case 0:
			//none
			break;
//		case 1:
//			ergodox_right_led_2_on();
//			break;
		case 6:
			FUNC6();
			break;
    }
    switch (deflayer) {
		 case 0:
		 FUNC2();
		 break;
		 case 1:
		 FUNC3();
		 break;
	}
}