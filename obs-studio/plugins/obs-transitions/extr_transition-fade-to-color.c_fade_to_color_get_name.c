
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;
 char const* obs_module_text (char*) ;

__attribute__((used)) static const char *fade_to_color_get_name(void *type_data)
{
 UNUSED_PARAMETER(type_data);
 return obs_module_text("FadeToColorTransition");
}
