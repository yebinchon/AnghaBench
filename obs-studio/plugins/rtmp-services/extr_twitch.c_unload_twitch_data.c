
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_ingests () ;
 int mutex ;
 int pthread_mutex_destroy (int *) ;
 int twitch_update_info ;
 int update_info_destroy (int ) ;

void unload_twitch_data(void)
{
 update_info_destroy(twitch_update_info);
 free_ingests();
 pthread_mutex_destroy(&mutex);
}
