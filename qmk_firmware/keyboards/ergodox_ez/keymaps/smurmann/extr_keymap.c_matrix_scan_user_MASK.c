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
typedef  int uint8_t ;
struct TYPE_2__ {int mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTRL ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  LED_BRIGHTNESS_HI ; 
 int /*<<< orphan*/  LED_BRIGHTNESS_LO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ capsOn ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* keyboard_report ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC11(void) {
   uint8_t layer = FUNC1(layer_state);

   if(layer == 1)
   {
      FUNC6();
      FUNC9();

      FUNC7 (LED_BRIGHTNESS_HI);
      FUNC10 (LED_BRIGHTNESS_HI);
   }

   if(capsOn)
   {
      FUNC4 (LED_BRIGHTNESS_HI);
      FUNC3 ();
   }

  if(keyboard_report->mods & FUNC0(KC_LSFT))
  { 
      FUNC4 (LED_BRIGHTNESS_HI);
      FUNC3 ();
  } else {
      FUNC4 (LED_BRIGHTNESS_LO);

      if(!capsOn)
      {
        FUNC2 ();
      }
  }

  if(keyboard_report->mods & FUNC0(KC_LALT))
  {
      FUNC7 (LED_BRIGHTNESS_HI);
      FUNC6 ();
  } else {
      FUNC7 (LED_BRIGHTNESS_LO);
     if(layer != 1)
     {
       FUNC5 ();
     }
  }

  if(keyboard_report->mods & FUNC0(KC_LCTRL))
  { 
      FUNC10 (LED_BRIGHTNESS_HI);
      FUNC9 ();
  } else {
      FUNC10 (LED_BRIGHTNESS_LO);
     if(layer != 1)
     {
       FUNC8 ();
     }
  }
}