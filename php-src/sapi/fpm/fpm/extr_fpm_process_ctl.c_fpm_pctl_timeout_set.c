
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpm_event_add (int *,int) ;
 int fpm_event_set_timer (int *,int ,int *,int *) ;
 int fpm_pctl_action ;
 int pctl_event ;

__attribute__((used)) static int fpm_pctl_timeout_set(int sec)
{
 fpm_event_set_timer(&pctl_event, 0, &fpm_pctl_action, ((void*)0));
 fpm_event_add(&pctl_event, sec * 1000);
 return 0;
}
