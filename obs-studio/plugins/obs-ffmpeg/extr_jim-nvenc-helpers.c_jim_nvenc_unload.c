
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_mutex ;
 int pthread_mutex_destroy (int *) ;

void jim_nvenc_unload(void)
{
 pthread_mutex_destroy(&init_mutex);
}
