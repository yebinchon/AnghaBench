
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int S_ATTACK_TIME ;
 int S_CLOSE_THRESHOLD ;
 int S_HOLD_TIME ;
 int S_OPEN_THRESHOLD ;
 int S_RELEASE_TIME ;
 int TEXT_ATTACK_TIME ;
 int TEXT_CLOSE_THRESHOLD ;
 int TEXT_HOLD_TIME ;
 int TEXT_OPEN_THRESHOLD ;
 int TEXT_RELEASE_TIME ;
 int UNUSED_PARAMETER (void*) ;
 int VOL_MAX ;
 int VOL_MIN ;
 int * obs_properties_add_float_slider (int *,int ,int ,int ,int ,double) ;
 int * obs_properties_add_int (int *,int ,int ,int ,int,int) ;
 int * obs_properties_create () ;
 int obs_property_float_set_suffix (int *,char*) ;
 int obs_property_int_set_suffix (int *,char*) ;

__attribute__((used)) static obs_properties_t *noise_gate_properties(void *data)
{
 obs_properties_t *ppts = obs_properties_create();
 obs_property_t *p;

 p = obs_properties_add_float_slider(ppts, S_CLOSE_THRESHOLD,
         TEXT_CLOSE_THRESHOLD, VOL_MIN,
         VOL_MAX, 1.0);
 obs_property_float_set_suffix(p, " dB");
 p = obs_properties_add_float_slider(ppts, S_OPEN_THRESHOLD,
         TEXT_OPEN_THRESHOLD, VOL_MIN,
         VOL_MAX, 1.0);
 obs_property_float_set_suffix(p, " dB");
 p = obs_properties_add_int(ppts, S_ATTACK_TIME, TEXT_ATTACK_TIME, 0,
       10000, 1);
 obs_property_int_set_suffix(p, " ms");
 p = obs_properties_add_int(ppts, S_HOLD_TIME, TEXT_HOLD_TIME, 0, 10000,
       1);
 obs_property_int_set_suffix(p, " ms");
 p = obs_properties_add_int(ppts, S_RELEASE_TIME, TEXT_RELEASE_TIME, 0,
       10000, 1);
 obs_property_int_set_suffix(p, " ms");

 UNUSED_PARAMETER(data);
 return ppts;
}
