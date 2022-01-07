
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_float_slider (int *,char*,int ,double,double,double) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *sharpness_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();

 obs_properties_add_float_slider(props, "sharpness",
     obs_module_text("Sharpness"), 0.0, 1.0,
     0.01);

 UNUSED_PARAMETER(data);
 return props;
}
