
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;
 char const* obs_module_text (char*) ;

__attribute__((used)) static const char *color_grade_filter_get_name(void *unused)
{
 UNUSED_PARAMETER(unused);
 return obs_module_text("ColorGradeFilter");
}
