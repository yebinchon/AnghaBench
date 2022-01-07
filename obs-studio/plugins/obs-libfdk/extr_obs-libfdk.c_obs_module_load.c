
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obs_libfdk_encoder ;
 int obs_register_encoder (int *) ;

bool obs_module_load(void)
{
 obs_register_encoder(&obs_libfdk_encoder);
 return 1;
}
