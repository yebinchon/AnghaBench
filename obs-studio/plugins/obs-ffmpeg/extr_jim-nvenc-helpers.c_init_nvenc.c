
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_mutex ;
 int init_nvenc_internal () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

bool init_nvenc(void)
{
 bool success;

 pthread_mutex_lock(&init_mutex);
 success = init_nvenc_internal();
 pthread_mutex_unlock(&init_mutex);

 return success;
}
