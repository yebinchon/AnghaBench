
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pos; scalar_t__ time_us; } ;
typedef TYPE_1__ rotary_event_t ;
typedef int lua_State ;
struct TYPE_8__ {int lastpos; int last_recent_event_was_release; scalar_t__ last_event_time; scalar_t__ click_delay_us; int possible_dbl_click; int last_recent_event_was_press; int id; } ;
typedef TYPE_2__ DATA ;


 int FALSE ;
 int ROTARY_DBLCLICK_INDEX ;
 int ROTARY_PRESS_INDEX ;
 int ROTARY_RELEASE_INDEX ;
 int ROTARY_TURN_INDEX ;
 int callback_call (int *,TYPE_2__*,int ,int,scalar_t__) ;
 int lrotary_check_timer (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ rotary_getevent (int ,TYPE_1__*) ;
 int rotary_has_queued_event (int ) ;
 scalar_t__ system_get_time () ;

__attribute__((used)) static bool lrotary_dequeue_single(lua_State* L, DATA *d)
{
  bool something_pending = FALSE;

  if (d) {

    rotary_event_t result;

    if (rotary_getevent(d->id, &result)) {
      int pos = result.pos;

      lrotary_check_timer(d, result.time_us, 0);

      if (pos != d->lastpos) {

 if ((pos ^ d->lastpos) & 0x7fffffff) {

   callback_call(L, d, ROTARY_TURN_INDEX, (pos << 1) >> 1, result.time_us);
 }
 if ((pos ^ d->lastpos) & 0x80000000) {

   callback_call(L, d, (pos & 0x80000000) ? ROTARY_PRESS_INDEX : ROTARY_RELEASE_INDEX, (pos << 1) >> 1, result.time_us);
   if (pos & 0x80000000) {

     if (d->last_recent_event_was_release && result.time_us - d->last_event_time < d->click_delay_us) {
       d->possible_dbl_click = 1;
     }
     d->last_recent_event_was_press = 1;
     d->last_recent_event_was_release = 0;
   } else {

     d->last_recent_event_was_press = 0;
     if (d->possible_dbl_click) {
       callback_call(L, d, ROTARY_DBLCLICK_INDEX, (pos << 1) >> 1, result.time_us);
       d->possible_dbl_click = 0;

       d->last_recent_event_was_release = 0;
     } else {
       d->last_recent_event_was_release = 1;
     }
   }
   d->last_event_time = result.time_us;
 }

 d->lastpos = pos;
      }

      something_pending = rotary_has_queued_event(d->id);
    }

    lrotary_check_timer(d, system_get_time(), 1);
  }

  return something_pending;
}
