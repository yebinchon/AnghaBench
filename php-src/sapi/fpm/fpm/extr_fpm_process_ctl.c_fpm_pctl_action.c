
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_event_s {int dummy; } ;


 int FPM_PCTL_ACTION_TIMEOUT ;
 int FPM_PCTL_STATE_UNSPECIFIED ;
 int fpm_pctl (int ,int ) ;

__attribute__((used)) static void fpm_pctl_action(struct fpm_event_s *ev, short which, void *arg)
{
 fpm_pctl(FPM_PCTL_STATE_UNSPECIFIED, FPM_PCTL_ACTION_TIMEOUT);
}
