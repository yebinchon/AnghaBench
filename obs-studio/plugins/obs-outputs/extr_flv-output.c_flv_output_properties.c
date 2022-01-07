
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int OBS_TEXT_DEFAULT ;
 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_text (int *,char*,int ,int ) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *flv_output_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();

 obs_properties_add_text(props, "path",
    obs_module_text("FLVOutput.FilePath"),
    OBS_TEXT_DEFAULT);
 return props;
}
