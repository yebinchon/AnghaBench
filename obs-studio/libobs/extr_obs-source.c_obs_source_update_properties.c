
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int obs_source_dosignal (int *,int *,char*) ;
 int obs_source_valid (int *,char*) ;

void obs_source_update_properties(obs_source_t *source)
{
 if (!obs_source_valid(source, "obs_source_update_properties"))
  return;

 obs_source_dosignal(source, ((void*)0), "update_properties");
}
