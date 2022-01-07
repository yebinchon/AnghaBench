
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int8_t ;
typedef int int16_t ;
struct TYPE_2__ {int year; int month; int day; } ;


 scalar_t__ CAPS_DISPLAY_X ;
 scalar_t__ CAPS_DISPLAY_Y ;
 scalar_t__ CLOCK_DISPLAY_X ;
 scalar_t__ CLOCK_DISPLAY_Y ;
 scalar_t__ DATE_DISPLAY_X ;
 scalar_t__ DATE_DISPLAY_Y ;
 scalar_t__ ENC_MODE_CLOCK_SET ;
 int NORM ;
 int PIXEL_OFF ;
 int PIXEL_ON ;
 scalar_t__ clock_set_mode ;
 int day_config ;
 int draw_encoder (int,int ,int) ;
 int draw_layer_section (int,int,int) ;
 int draw_line (scalar_t__,int ,scalar_t__,int ,int ,int ) ;
 int draw_rect_filled_soft (scalar_t__,scalar_t__,int,int,int ,int ) ;
 int draw_string (scalar_t__,scalar_t__,char*,int ,int ,int) ;
 scalar_t__ encoder_mode ;
 int hour_config ;
 int last_minute ;
 TYPE_1__ last_timespec ;
 int led_capslock ;
 int minute_config ;
 int month_config ;
 int send_buffer () ;
 int sprintf (char*,char*,int) ;
 int time_config_idx ;
 int year_config ;

void draw_clock(){
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

  sprintf(hour_str, "%02d", hour);
  sprintf(min_str, "%02d", minute);
  sprintf(year_str, "%d", year);
  sprintf(month_str, "%02d", month);
  sprintf(day_str, "%02d", day);




  draw_string(6, 0, year_str, PIXEL_ON, NORM, 0);
  draw_string(6 + 25, 0, "-", PIXEL_ON, NORM, 0);
  draw_string(6 + 31, 0, month_str, PIXEL_ON, NORM, 0);
  draw_string(6 + 44, 0, "-", PIXEL_ON, NORM, 0);
  draw_string(6 + 50, 0, day_str, PIXEL_ON, NORM, 0);



  draw_string(6, 14, hour_str, PIXEL_ON, NORM, 1);
  draw_string(6 + 17, 14, ":", PIXEL_ON, NORM, 1);
  draw_string(6 + 25, 14, min_str, PIXEL_ON, NORM, 1);
  if(is_pm){
    draw_string(6 + 41, 14, "pm", PIXEL_ON, NORM, 1);
  } else{
    draw_string(6 + 41, 14, "am", PIXEL_ON, NORM, 1);
  }

  if(clock_set_mode){
    switch(time_config_idx){
      case 0:
      default:
        draw_line(6, 14 + 17, 6 + 16, 14 + 17, PIXEL_ON, NORM);
        break;
      case 1:
        draw_line(6 + 25, 14 + 17, 6 + 41, 14 + 17, PIXEL_ON, NORM);
        break;
      case 2:
        draw_line(6, 0 + 9, 6 + 23, 0 + 9, PIXEL_ON, NORM);
        break;
      case 3:
        draw_line(6 + 31, 0 + 9, 6 + 43, 0 + 9, PIXEL_ON, NORM);
        break;
      case 4:
        draw_line(6 + 50, 0 + 9, 6 + 61, 0 + 9,PIXEL_ON, NORM);
        break;
    }
  }

  draw_encoder(80, 0, 1);
  draw_layer_section(80, 11, 1);




  if (led_capslock == 1) {
    draw_rect_filled_soft(86, 22, 5 + (4 * 6), 9, PIXEL_ON, NORM);
    draw_string(86 + 3, 22 +1, "CAPS", PIXEL_OFF, NORM, 0);
  } else if (led_capslock == 0) {
    draw_string(86 + 3, 22 +1, "CAPS", PIXEL_ON, NORM, 0);
  }


  send_buffer();

}
