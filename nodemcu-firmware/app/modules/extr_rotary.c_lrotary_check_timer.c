
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ last_event_time; int timer_running; scalar_t__ longpress_delay_us; int lastpos; scalar_t__ click_delay_us; int timer; scalar_t__ last_recent_event_was_release; scalar_t__ last_recent_event_was_press; } ;
typedef TYPE_1__ DATA ;


 int ROTARY_CLICK_INDEX ;
 int ROTARY_LONGPRESS_INDEX ;
 int callback_call (int ,TYPE_1__*,int ,int,scalar_t__) ;
 int lua_getstate () ;
 int os_timer_arm (int *,int,int ) ;
 int os_timer_disarm (int *) ;

__attribute__((used)) static void lrotary_check_timer(DATA *d, uint32_t time_us, bool dotimer)
{
  uint32_t delay = time_us - d->last_event_time;
  if (d->timer_running) {
    os_timer_disarm(&d->timer);
    d->timer_running = 0;
  }

  int timeout = -1;

  if (d->last_recent_event_was_press) {
    if (delay > d->longpress_delay_us) {
      callback_call(lua_getstate(), d, ROTARY_LONGPRESS_INDEX, (d->lastpos << 1) >> 1, d->last_event_time + d->longpress_delay_us);
      d->last_recent_event_was_press = 0;
    } else {
      timeout = (d->longpress_delay_us - delay) / 1000;
    }
  }
  if (d->last_recent_event_was_release) {
    if (delay > d->click_delay_us) {
      callback_call(lua_getstate(), d, ROTARY_CLICK_INDEX, (d->lastpos << 1) >> 1, d->last_event_time + d->click_delay_us);
      d->last_recent_event_was_release = 0;
    } else {
      timeout = (d->click_delay_us - delay) / 1000;
    }
  }

  if (dotimer && timeout >= 0) {
    d->timer_running = 1;
    os_timer_arm(&d->timer, timeout + 1, 0);
  }
}
