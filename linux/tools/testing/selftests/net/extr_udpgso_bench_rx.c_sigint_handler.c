
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int interrupted ;

__attribute__((used)) static void sigint_handler(int signum)
{
 if (signum == SIGINT)
  interrupted = 1;
}
