
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int millisecond; } ;


 int DISPLAYOFF ;
 scalar_t__ OLED_OFF ;
 int RTCD1 ;
 scalar_t__ ScreenOffInterval ;
 int draw_ui () ;
 int last_flush ;
 scalar_t__ last_minute ;
 TYPE_1__ last_timespec ;
 scalar_t__ oled_mode ;
 int oled_sleeping ;
 int queue_for_send ;
 int read_host_led_state () ;
 int rtcGetTime (int *,TYPE_1__*) ;
 int send_command (int ) ;
 scalar_t__ timer_elapsed (int ) ;

void matrix_scan_kb(void) {
  rtcGetTime(&RTCD1, &last_timespec);
  uint16_t minutes_since_midnight = last_timespec.millisecond / 1000 / 60;

  if (minutes_since_midnight != last_minute){
    last_minute = minutes_since_midnight;
    if(!oled_sleeping){
      queue_for_send = 1;
    }
  }
}
