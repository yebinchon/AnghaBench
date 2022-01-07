
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;






 int SIGCONT ;
 int SIGQUIT ;
 int SIGSTOP ;
 int SIGTERM ;
 int kill (int ,int) ;

int fpm_pctl_kill(pid_t pid, int how)
{
 int s = 0;

 switch (how) {
  case 128 :
   s = SIGTERM;
   break;
  case 129 :
   s = SIGSTOP;
   break;
  case 131 :
   s = SIGCONT;
   break;
  case 130 :
   s = SIGQUIT;
   break;
  default :
   break;
 }
 return kill(pid, s);
}
