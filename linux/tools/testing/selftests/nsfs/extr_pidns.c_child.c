
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_PDEATHSIG ;
 int SIGKILL ;
 int exit (int ) ;
 int prctl (int ,int ) ;
 int sleep (int) ;

__attribute__((used)) static int child(void *args)
{
 prctl(PR_SET_PDEATHSIG, SIGKILL);
 while (1)
  sleep(1);
 exit(0);
}
