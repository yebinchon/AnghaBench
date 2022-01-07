
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int S_GAIN_DB ;
 int TEXT_GAIN_DB ;
 int UNUSED_PARAMETER (void*) ;
 int * obs_properties_add_float_slider (int *,int ,int ,double,double,double) ;
 int * obs_properties_create () ;
 int obs_property_float_set_suffix (int *,char*) ;

__attribute__((used)) static obs_properties_t *gain_properties(void *data)
{
 obs_properties_t *ppts = obs_properties_create();

 obs_property_t *p = obs_properties_add_float_slider(
  ppts, S_GAIN_DB, TEXT_GAIN_DB, -30.0, 30.0, 0.1);
 obs_property_float_set_suffix(p, " dB");

 UNUSED_PARAMETER(data);
 return ppts;
}
