
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int S_COLOR ;
 int S_SWITCH_POINT ;
 int obs_data_set_default_int (int *,int ,int) ;

__attribute__((used)) static void fade_to_color_defaults(obs_data_t *settings)
{
 obs_data_set_default_int(settings, S_COLOR, 0xFF000000);
 obs_data_set_default_int(settings, S_SWITCH_POINT, 50);
}
