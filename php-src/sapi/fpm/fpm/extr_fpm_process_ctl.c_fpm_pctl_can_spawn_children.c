
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FPM_PCTL_STATE_NORMAL ;
 scalar_t__ fpm_state ;

int fpm_pctl_can_spawn_children()
{
 return fpm_state == FPM_PCTL_STATE_NORMAL;
}
