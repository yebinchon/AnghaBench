
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_int (int *,char*,int) ;

__attribute__((used)) static void color_source_defaults(obs_data_t *settings)
{
 obs_data_set_default_int(settings, "color", 0xFFFFFFFF);
 obs_data_set_default_int(settings, "width", 400);
 obs_data_set_default_int(settings, "height", 400);
}
