
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_time_state () ;
 int exit (int ) ;

void handler(int unused)
{
 clear_time_state();
 exit(0);
}
