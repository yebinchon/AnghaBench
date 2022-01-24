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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENCODER_INDICATOR_X ; 
 int /*<<< orphan*/  ENCODER_INDICATOR_Y ; 
 scalar_t__ ENC_MODE_CLOCK_SET ; 
 scalar_t__ LOCK_DISPLAY_X ; 
 int LOCK_DISPLAY_Y ; 
 int MATRIX_COLS ; 
 scalar_t__ MATRIX_DISPLAY_X ; 
 int MATRIX_DISPLAY_Y ; 
 int MATRIX_ROWS ; 
 scalar_t__ MOD_DISPLAY_X ; 
 int MOD_DISPLAY_Y ; 
 int MOD_LALT ; 
 int MOD_LCTL ; 
 int MOD_LGUI ; 
 int MOD_LSFT ; 
 int /*<<< orphan*/  NORM ; 
 int /*<<< orphan*/  PIXEL_OFF ; 
 int /*<<< orphan*/  PIXEL_ON ; 
 scalar_t__ TIME_DISPLAY_X ; 
 int TIME_DISPLAY_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ encoder_mode ; 
 int FUNC6 () ; 
 int hour_config ; 
 int last_minute ; 
 int led_capslock ; 
 int led_scrolllock ; 
 int FUNC7 (int) ; 
 int minute_config ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

void FUNC10(){
  uint8_t hour = last_minute / 60;
  uint16_t minute = last_minute % 60;

  if(encoder_mode == ENC_MODE_CLOCK_SET){
    hour = hour_config;
    minute = minute_config;
  }

  bool is_pm = (hour / 12) > 0;
  hour = hour % 12;
  if (hour == 0){
    hour = 12;
  }
  char hour_str[3] = "";
  char min_str[3] = "";

  FUNC9(hour_str, "%02d", hour);
  FUNC9(min_str, "%02d", minute);

  uint8_t mods = FUNC6();

/* Layer indicator is 41 x 10 pixels */
  FUNC1(0,0,true);

#define ENCODER_INDICATOR_X 45
#define ENCODER_INDICATOR_Y 0
  FUNC0(ENCODER_INDICATOR_X, ENCODER_INDICATOR_Y, true);
/* Matrix display is 19 x 9 pixels */
#define MATRIX_DISPLAY_X 0
#define MATRIX_DISPLAY_Y 18

  for (uint8_t x = 0; x < MATRIX_ROWS; x++) {
    for (uint8_t y = 0; y < MATRIX_COLS; y++) {
      FUNC2(MATRIX_DISPLAY_X + y + 2, MATRIX_DISPLAY_Y + x + 2,(FUNC7(x) & (1 << y)) > 0, NORM);
    }
  }
  FUNC4(MATRIX_DISPLAY_X, MATRIX_DISPLAY_Y, 19, 9, PIXEL_ON, NORM);
  /* hadron oled location on thumbnail */
  FUNC3(MATRIX_DISPLAY_X + 14, MATRIX_DISPLAY_Y + 2, 3, 1, PIXEL_ON, NORM);

/* Mod display is 41 x 16 pixels */
#define MOD_DISPLAY_X 30
#define MOD_DISPLAY_Y 18

  if (mods & MOD_LSFT) {
    FUNC3(MOD_DISPLAY_X + 0, MOD_DISPLAY_Y, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    FUNC5(MOD_DISPLAY_X + 3, MOD_DISPLAY_Y + 2, "S", PIXEL_OFF, NORM, 0);
  } else {
    FUNC5(MOD_DISPLAY_X + 3, MOD_DISPLAY_Y + 2, "S", PIXEL_ON, NORM, 0);
  }
  if (mods & MOD_LCTL) {
    FUNC3(MOD_DISPLAY_X + 10, MOD_DISPLAY_Y, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    FUNC5(MOD_DISPLAY_X + 13, MOD_DISPLAY_Y + 2, "C", PIXEL_OFF, NORM, 0);
  } else {
    FUNC5(MOD_DISPLAY_X + 13, MOD_DISPLAY_Y + 2, "C", PIXEL_ON, NORM, 0);
  }
  if (mods & MOD_LALT) {
    FUNC3(MOD_DISPLAY_X + 20, MOD_DISPLAY_Y, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    FUNC5(MOD_DISPLAY_X + 23, MOD_DISPLAY_Y + 2, "A", PIXEL_OFF, NORM, 0);
  } else {
    FUNC5(MOD_DISPLAY_X + 23, MOD_DISPLAY_Y + 2, "A", PIXEL_ON, NORM, 0);
  }
  if (mods & MOD_LGUI) {
    FUNC3(MOD_DISPLAY_X + 30, MOD_DISPLAY_Y, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    FUNC5(MOD_DISPLAY_X + 33, MOD_DISPLAY_Y + 2, "G", PIXEL_OFF, NORM, 0);
  } else {
    FUNC5(MOD_DISPLAY_X + 33, MOD_DISPLAY_Y + 2, "G", PIXEL_ON, NORM, 0);
  }

/* Lock display is 23 x 21 */
#define LOCK_DISPLAY_X 100
#define LOCK_DISPLAY_Y 0

  if (led_capslock == true) {
    FUNC3(LOCK_DISPLAY_X + 0, LOCK_DISPLAY_Y, 5 + (3 * 6), 9, PIXEL_ON, NORM);
    FUNC5(LOCK_DISPLAY_X + 3, LOCK_DISPLAY_Y +1, "CAP", PIXEL_OFF, NORM, 0);
  } else if (led_capslock == false) {
    FUNC5(LOCK_DISPLAY_X + 3, LOCK_DISPLAY_Y +1, "CAP", PIXEL_ON, NORM, 0);
  }

  if (led_scrolllock == true) {
    FUNC3(LOCK_DISPLAY_X + 0, LOCK_DISPLAY_Y + 11, 5 + (3 * 6), 9, PIXEL_ON, NORM);
    FUNC5(LOCK_DISPLAY_X + 3, LOCK_DISPLAY_Y + 11 +1, "SCR", PIXEL_OFF, NORM, 0);
  } else if (led_scrolllock == false) {
    FUNC5(LOCK_DISPLAY_X + 3, LOCK_DISPLAY_Y + 11 +1, "SCR", PIXEL_ON, NORM, 0);
  }

#define TIME_DISPLAY_X 82
#define TIME_DISPLAY_Y 22
  FUNC5(TIME_DISPLAY_X, TIME_DISPLAY_Y, hour_str, PIXEL_ON, NORM, 0);
  FUNC5(TIME_DISPLAY_X + 11, TIME_DISPLAY_Y, ":", PIXEL_ON, NORM, 0);
  FUNC5(TIME_DISPLAY_X + 15, TIME_DISPLAY_Y, min_str, PIXEL_ON, NORM, 0);
  if(is_pm){
    FUNC5(TIME_DISPLAY_X + 27, TIME_DISPLAY_Y, "pm", PIXEL_ON, NORM, 0);
  } else{
    FUNC5(TIME_DISPLAY_X + 27, TIME_DISPLAY_Y, "am", PIXEL_ON, NORM, 0);
  }

  FUNC8();
}