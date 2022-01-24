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
 int LED_BRIGHTNESS_HI ; 
 int LED_BRIGHTNESS_LO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void)
{

  FUNC1();
  FUNC5();
  FUNC4();
  FUNC6(255, 0, 0);
  for (int i = LED_BRIGHTNESS_HI; i > LED_BRIGHTNESS_LO; i--)
  {
    FUNC2(i);
    FUNC7(5);
  }
  FUNC6(255, 255, 0);
  FUNC7(1000);
  for (int i = LED_BRIGHTNESS_LO; i > 0; i--)
  {
    FUNC2(i);
    FUNC7(10);
  }
  FUNC6(0, 255, 255);
  FUNC0();
  FUNC7(1000);

  FUNC3(50);
}