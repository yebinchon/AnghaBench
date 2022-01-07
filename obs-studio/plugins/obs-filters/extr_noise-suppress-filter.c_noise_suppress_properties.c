
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int SUP_MAX ;
 int SUP_MIN ;
 int S_SUPPRESS_LEVEL ;
 int TEXT_SUPPRESS_LEVEL ;
 int UNUSED_PARAMETER (void*) ;
 int * obs_properties_add_int_slider (int *,int ,int ,int ,int ,int) ;
 int * obs_properties_create () ;
 int obs_property_int_set_suffix (int *,char*) ;

__attribute__((used)) static obs_properties_t *noise_suppress_properties(void *data)
{
 obs_properties_t *ppts = obs_properties_create();

 obs_property_t *p = obs_properties_add_int_slider(ppts,
         S_SUPPRESS_LEVEL,
         TEXT_SUPPRESS_LEVEL,
         SUP_MIN, SUP_MAX, 1);
 obs_property_int_set_suffix(p, " dB");

 UNUSED_PARAMETER(data);
 return ppts;
}
