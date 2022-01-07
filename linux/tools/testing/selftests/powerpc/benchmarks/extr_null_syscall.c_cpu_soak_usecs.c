
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct TYPE_2__ {unsigned long tv_usec; } ;
struct itimerval {TYPE_1__ it_value; } ;


 int ITIMER_REAL ;
 int SIGALRM ;
 int SIG_DFL ;
 int memset (struct itimerval*,int ,int) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int sigalrm_handler ;
 int signal (int ,int ) ;
 scalar_t__ soak_done ;

__attribute__((used)) static void cpu_soak_usecs(unsigned long usecs)
{
 struct itimerval val;

 memset(&val, 0, sizeof(val));
 val.it_value.tv_usec = usecs;

 signal(SIGALRM, sigalrm_handler);
 setitimer(ITIMER_REAL, &val, ((void*)0));

 while (1) {
  if (soak_done)
   break;
 }

 signal(SIGALRM, SIG_DFL);
}
