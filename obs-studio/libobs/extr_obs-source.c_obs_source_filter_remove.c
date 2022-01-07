
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int obs_ptr_valid (int *,char*) ;
 scalar_t__ obs_source_filter_remove_refless (int *,int *) ;
 int obs_source_release (int *) ;
 int obs_source_valid (int *,char*) ;

void obs_source_filter_remove(obs_source_t *source, obs_source_t *filter)
{
 if (!obs_source_valid(source, "obs_source_filter_remove"))
  return;
 if (!obs_ptr_valid(filter, "obs_source_filter_remove"))
  return;

 if (obs_source_filter_remove_refless(source, filter))
  obs_source_release(filter);
}
