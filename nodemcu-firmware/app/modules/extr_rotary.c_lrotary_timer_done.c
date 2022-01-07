
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timer_running; } ;
typedef TYPE_1__ DATA ;


 int lrotary_check_timer (TYPE_1__*,int ,int) ;
 int system_get_time () ;

__attribute__((used)) static void lrotary_timer_done(void *param)
{
  DATA *d = (DATA *) param;

  d->timer_running = 0;

  lrotary_check_timer(d, system_get_time(), 1);
}
