
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running_children; } ;


 int FPM_PCTL_ACTION_LAST_CHILD_EXITED ;
 scalar_t__ FPM_PCTL_STATE_NORMAL ;
 int FPM_PCTL_STATE_UNSPECIFIED ;
 TYPE_1__ fpm_globals ;
 int fpm_pctl (int ,int ) ;
 scalar_t__ fpm_state ;

int fpm_pctl_child_exited()
{
 if (fpm_state == FPM_PCTL_STATE_NORMAL) {
  return 0;
 }

 if (!fpm_globals.running_children) {
  fpm_pctl(FPM_PCTL_STATE_UNSPECIFIED, FPM_PCTL_ACTION_LAST_CHILD_EXITED);
 }
 return 0;
}
