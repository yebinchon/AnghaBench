
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_color (int *,char*,int ) ;
 int obs_properties_add_int (int *,char*,int ,int ,int,int) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *color_source_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();

 obs_properties_add_color(props, "color",
     obs_module_text("ColorSource.Color"));

 obs_properties_add_int(props, "width",
          obs_module_text("ColorSource.Width"), 0, 4096,
          1);

 obs_properties_add_int(props, "height",
          obs_module_text("ColorSource.Height"), 0, 4096,
          1);

 return props;
}
