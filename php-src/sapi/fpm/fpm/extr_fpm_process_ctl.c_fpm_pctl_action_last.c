
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpm_pctl_exec () ;
 int fpm_pctl_exit () ;
 int fpm_state ;

__attribute__((used)) static void fpm_pctl_action_last()
{
 switch (fpm_state) {
  case 129:
   fpm_pctl_exec();
   break;

  case 130:
  case 128:
   fpm_pctl_exit();
   break;
 }
}
