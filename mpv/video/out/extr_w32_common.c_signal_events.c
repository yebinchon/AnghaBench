
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int vo; int event_flags; } ;


 int atomic_fetch_or (int *,int) ;
 int vo_wakeup (int ) ;

__attribute__((used)) static void signal_events(struct vo_w32_state *w32, int events)
{
    atomic_fetch_or(&w32->event_flags, events);
    vo_wakeup(w32->vo);
}
