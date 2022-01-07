
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex ;
 int pthread_mutex_unlock (int *) ;

void twitch_ingests_unlock(void)
{
 pthread_mutex_unlock(&mutex);
}
