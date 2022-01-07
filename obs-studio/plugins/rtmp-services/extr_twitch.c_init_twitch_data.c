
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_ingests ;
 int da_init (int ) ;
 int mutex ;
 int pthread_mutex_init (int *,int *) ;

void init_twitch_data(void)
{
 da_init(cur_ingests);
 pthread_mutex_init(&mutex, ((void*)0));
}
