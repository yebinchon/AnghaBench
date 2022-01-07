
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;
typedef int obs_data_t ;


 int * obs_load_source_type (int *) ;

obs_source_t *obs_load_source(obs_data_t *source_data)
{
 return obs_load_source_type(source_data);
}
