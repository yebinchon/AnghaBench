
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int S_DELAY_MS ;
 int T_DELAY_MS ;
 int UNUSED_PARAMETER (void*) ;
 int * obs_properties_add_int (int *,int ,int ,int ,int,int) ;
 int * obs_properties_create () ;
 int obs_property_int_set_suffix (int *,char*) ;

__attribute__((used)) static obs_properties_t *gpu_delay_filter_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();

 obs_property_t *p = obs_properties_add_int(props, S_DELAY_MS,
         T_DELAY_MS, 0, 500, 1);
 obs_property_int_set_suffix(p, " ms");

 UNUSED_PARAMETER(data);
 return props;
}
