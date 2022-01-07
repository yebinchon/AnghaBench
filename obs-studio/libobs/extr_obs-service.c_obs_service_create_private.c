
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_service_t ;
typedef int obs_data_t ;


 int * obs_service_create_internal (char const*,char const*,int *,int *,int) ;

obs_service_t *obs_service_create_private(const char *id, const char *name,
       obs_data_t *settings)
{
 return obs_service_create_internal(id, name, settings, ((void*)0), 1);
}
