
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_disable_press; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 int lock () ;
 TYPE_2__* obs ;
 int unlock () ;

void obs_hotkey_enable_background_press(bool enable)
{
 if (!lock())
  return;

 obs->hotkeys.thread_disable_press = !enable;
 unlock();
}
