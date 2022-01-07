
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZLOG_DEBUG ;
 int fpm_pctl_action_last () ;
 int fpm_pctl_action_next () ;
 int fpm_signal_sent ;
 int fpm_state ;
 int * fpm_state_names ;
 int zlog (int ,char*,int ,...) ;

void fpm_pctl(int new_state, int action)
{
 switch (action) {
  case 133 :
   if (fpm_state == new_state) {
    return;
   }

   switch (fpm_state) {
    case 130 :

     break;
    case 129 :

     if (new_state == 131) break;
    case 131 :

     if (new_state == 128) break;
    case 128 :

     zlog(ZLOG_DEBUG, "not switching to '%s' state, because already in '%s' state",
      fpm_state_names[new_state], fpm_state_names[fpm_state]);
     return;
   }

   fpm_signal_sent = 0;
   fpm_state = new_state;

   zlog(ZLOG_DEBUG, "switching to '%s' state", fpm_state_names[fpm_state]);


  case 132 :
   fpm_pctl_action_next();
   break;
  case 134 :
   fpm_pctl_action_last();
   break;

 }
}
