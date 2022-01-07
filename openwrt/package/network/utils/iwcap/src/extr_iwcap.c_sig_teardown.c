
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_stop ;

void sig_teardown(int sig)
{
 run_stop = 1;
}
