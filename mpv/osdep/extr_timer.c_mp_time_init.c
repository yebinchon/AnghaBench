
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_timer_init ;
 int pthread_once (int *,int ) ;
 int timer_init_once ;

void mp_time_init(void)
{
    pthread_once(&timer_init_once, do_timer_init);
}
