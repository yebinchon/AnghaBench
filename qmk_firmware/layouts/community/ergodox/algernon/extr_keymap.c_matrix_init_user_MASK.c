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
typedef  unsigned long uint8_t ;

/* Variables and functions */
 unsigned long ADORE ; 
 int LED_BRIGHTNESS_HI ; 
 int LED_BRIGHTNESS_LO ; 
 int /*<<< orphan*/  UC_LNX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int is_adore ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void) {
  uint8_t dl;

  FUNC6(UC_LNX);

  FUNC4();
  for (int i = LED_BRIGHTNESS_HI; i > LED_BRIGHTNESS_LO; i--) {
    FUNC5 (i);
    FUNC7 (5);
  }
  FUNC7(1000);
  for (int i = LED_BRIGHTNESS_LO; i > 0; i--) {
    FUNC5 (i);
    FUNC7 (10);
  }
  FUNC3();

  if (!FUNC1())
    FUNC0();
  dl = FUNC2 ();
  if (dl == (1UL << ADORE)) {
    is_adore = 1;
  }
}