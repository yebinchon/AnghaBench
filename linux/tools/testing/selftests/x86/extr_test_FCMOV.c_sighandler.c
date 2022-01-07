
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,int) ;

void sighandler(int sig)
{
 printf("[FAIL]\tGot signal %d, exiting\n", sig);
 exit(1);
}
