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
typedef  int int8_t ;
typedef  int int16_t ;
struct TYPE_2__ {int year; int month; int day; } ;

/* Variables and functions */
 scalar_t__ CAPS_DISPLAY_X ; 
 scalar_t__ CAPS_DISPLAY_Y ; 
 scalar_t__ CLOCK_DISPLAY_X ; 
 scalar_t__ CLOCK_DISPLAY_Y ; 
 scalar_t__ DATE_DISPLAY_X ; 
 scalar_t__ DATE_DISPLAY_Y ; 
 scalar_t__ ENC_MODE_CLOCK_SET ; 
 int /*<<< orphan*/  NORM ; 
 int /*<<< orphan*/  PIXEL_OFF ; 
 int /*<<< orphan*/  PIXEL_ON ; 
 scalar_t__ clock_set_mode ; 
 int day_config ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ encoder_mode ; 
 int hour_config ; 
 int last_minute ; 
 TYPE_1__ last_timespec ; 
 int led_capslock ; 
 int minute_config ; 
 int month_config ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int time_config_idx ; 
 int year_config ; 

void FUNC7(){
  int8_t hour = last_minute / 60;
  int16_t minute = last_minute % 60;
  int16_t year = last_timespec.year + 1980;
  int8_t month = last_timespec.month;
  int8_t day = last_timespec.day;

  if(encoder_mode == ENC_MODE_CLOCK_SET){
    hour = hour_config;
    minute = minute_config;
    year = year_config + 1980;
    month = month_config;
    day = day_config;
  }

  bool is_pm = (hour / 12) > 0;
  hour = hour % 12;
  if (hour == 0){
    hour = 12;
  }
  char hour_str[3] = "";
  char min_str[3] = "";
  char year_str[5] = "";
  char month_str[3] = "";
  char day_str[3] = "";

  FUNC6(hour_str, "%02d", hour);
  FUNC6(min_str, "%02d", minute);
  FUNC6(year_str, "%d", year);
  FUNC6(month_str, "%02d", month);
  FUNC6(day_str, "%02d", day);


#define DATE_DISPLAY_X 6
#define DATE_DISPLAY_Y 0
  FUNC4(DATE_DISPLAY_X, DATE_DISPLAY_Y, year_str, PIXEL_ON, NORM, 0);
  FUNC4(DATE_DISPLAY_X + 25, DATE_DISPLAY_Y, "-", PIXEL_ON, NORM, 0);
  FUNC4(DATE_DISPLAY_X + 31, DATE_DISPLAY_Y, month_str, PIXEL_ON, NORM, 0);
  FUNC4(DATE_DISPLAY_X + 44, DATE_DISPLAY_Y, "-", PIXEL_ON, NORM, 0);
  FUNC4(DATE_DISPLAY_X + 50, DATE_DISPLAY_Y, day_str, PIXEL_ON, NORM, 0);

#define CLOCK_DISPLAY_X 6
#define CLOCK_DISPLAY_Y 14
  FUNC4(CLOCK_DISPLAY_X, CLOCK_DISPLAY_Y, hour_str, PIXEL_ON, NORM, 1);
  FUNC4(CLOCK_DISPLAY_X + 17, CLOCK_DISPLAY_Y, ":", PIXEL_ON, NORM, 1);
  FUNC4(CLOCK_DISPLAY_X + 25, CLOCK_DISPLAY_Y, min_str, PIXEL_ON, NORM, 1);
  if(is_pm){
    FUNC4(CLOCK_DISPLAY_X + 41, CLOCK_DISPLAY_Y, "pm", PIXEL_ON, NORM, 1);
  } else{
    FUNC4(CLOCK_DISPLAY_X + 41, CLOCK_DISPLAY_Y, "am", PIXEL_ON, NORM, 1);
  }

  if(clock_set_mode){
    switch(time_config_idx){
      case 0: // hour
      default:
        FUNC2(CLOCK_DISPLAY_X, CLOCK_DISPLAY_Y + 17, CLOCK_DISPLAY_X + 16, CLOCK_DISPLAY_Y + 17, PIXEL_ON, NORM);
        break;
      case 1: // minute
        FUNC2(CLOCK_DISPLAY_X + 25, CLOCK_DISPLAY_Y + 17, CLOCK_DISPLAY_X + 41, CLOCK_DISPLAY_Y + 17, PIXEL_ON, NORM);
        break;
      case 2: // year
        FUNC2(DATE_DISPLAY_X, DATE_DISPLAY_Y + 9, DATE_DISPLAY_X + 23, DATE_DISPLAY_Y + 9, PIXEL_ON, NORM);
        break;
      case 3: // month
        FUNC2(DATE_DISPLAY_X + 31, DATE_DISPLAY_Y + 9, DATE_DISPLAY_X + 43, DATE_DISPLAY_Y + 9, PIXEL_ON, NORM);
        break;
      case 4: //day
        FUNC2(DATE_DISPLAY_X + 50, DATE_DISPLAY_Y + 9, DATE_DISPLAY_X + 61, DATE_DISPLAY_Y + 9,PIXEL_ON, NORM);
        break;
    }
  }

  FUNC0(80, 0, true);
  FUNC1(80, 11, true);

#define CAPS_DISPLAY_X 86
#define CAPS_DISPLAY_Y 22

  if (led_capslock == true) {
    FUNC3(CAPS_DISPLAY_X, CAPS_DISPLAY_Y, 5 + (4 * 6), 9, PIXEL_ON, NORM);
    FUNC4(CAPS_DISPLAY_X + 3, CAPS_DISPLAY_Y +1, "CAPS", PIXEL_OFF, NORM, 0);
  } else if (led_capslock == false) {
    FUNC4(CAPS_DISPLAY_X + 3, CAPS_DISPLAY_Y +1, "CAPS", PIXEL_ON, NORM, 0);
  }


  FUNC5();

}