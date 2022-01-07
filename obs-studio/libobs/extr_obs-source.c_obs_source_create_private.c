
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;
typedef int obs_data_t ;


 int LIBOBS_API_VER ;
 int * obs_source_create_internal (char const*,char const*,int *,int *,int,int ) ;

obs_source_t *obs_source_create_private(const char *id, const char *name,
     obs_data_t *settings)
{
 return obs_source_create_internal(id, name, settings, ((void*)0), 1,
       LIBOBS_API_VER);
}
