
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {scalar_t__ behavior; int restart_on_activate; int use_cut; int pause_on_deactivate; } ;


 scalar_t__ BEHAVIOR_PAUSE_UNPAUSE ;
 scalar_t__ BEHAVIOR_STOP_RESTART ;

__attribute__((used)) static void ss_activate(void *data)
{
 struct slideshow *ss = data;

 if (ss->behavior == BEHAVIOR_STOP_RESTART) {
  ss->restart_on_activate = 1;
  ss->use_cut = 1;
 } else if (ss->behavior == BEHAVIOR_PAUSE_UNPAUSE) {
  ss->pause_on_deactivate = 0;
 }
}
