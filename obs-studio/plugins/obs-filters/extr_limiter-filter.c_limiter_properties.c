
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int MAX_RLS_MS ;
 int MAX_THRESHOLD_DB ;
 int MIN_ATK_RLS_MS ;
 int MIN_THRESHOLD_DB ;
 int S_RELEASE_TIME ;
 int S_THRESHOLD ;
 int TEXT_RELEASE_TIME ;
 int TEXT_THRESHOLD ;
 int UNUSED_PARAMETER (void*) ;
 int * obs_properties_add_float_slider (int *,int ,int ,int ,int ,double) ;
 int * obs_properties_add_int_slider (int *,int ,int ,int ,int ,int) ;
 int * obs_properties_create () ;
 int obs_property_float_set_suffix (int *,char*) ;
 int obs_property_int_set_suffix (int *,char*) ;

__attribute__((used)) static obs_properties_t *limiter_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();
 obs_property_t *p;

 p = obs_properties_add_float_slider(props, S_THRESHOLD, TEXT_THRESHOLD,
         MIN_THRESHOLD_DB, MAX_THRESHOLD_DB,
         0.1);
 obs_property_float_set_suffix(p, " dB");
 p = obs_properties_add_int_slider(props, S_RELEASE_TIME,
       TEXT_RELEASE_TIME, MIN_ATK_RLS_MS,
       MAX_RLS_MS, 1);
 obs_property_int_set_suffix(p, " ms");

 UNUSED_PARAMETER(data);
 return props;
}
