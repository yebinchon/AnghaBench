
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop_event; } ;
typedef TYPE_1__ os_inhibit_t ;


 scalar_t__ ETIMEDOUT ;
 scalar_t__ os_event_timedwait (int ,int) ;
 int reset_screensaver (TYPE_1__*) ;

__attribute__((used)) static void *screensaver_thread(void *param)
{
 os_inhibit_t *info = param;

 while (os_event_timedwait(info->stop_event, 30000) == ETIMEDOUT)
  reset_screensaver(info);

 return ((void*)0);
}
