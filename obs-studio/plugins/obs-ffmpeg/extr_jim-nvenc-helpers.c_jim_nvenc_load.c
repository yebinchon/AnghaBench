
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_mutex ;
 int nvenc_info ;
 int obs_register_encoder (int *) ;
 int pthread_mutex_init (int *,int *) ;

void jim_nvenc_load(void)
{
 pthread_mutex_init(&init_mutex, ((void*)0));
 obs_register_encoder(&nvenc_info);
}
