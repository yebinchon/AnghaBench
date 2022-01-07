
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_array_t ;


 int * obs_save_sources_filtered (int ,int *) ;
 int save_source_filter ;

obs_data_array_t *obs_save_sources(void)
{
 return obs_save_sources_filtered(save_source_filter, ((void*)0));
}
