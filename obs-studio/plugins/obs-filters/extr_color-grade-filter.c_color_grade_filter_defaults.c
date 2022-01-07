
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int SETTING_CLUT_AMOUNT ;
 int obs_data_set_default_double (int *,int ,int) ;

__attribute__((used)) static void color_grade_filter_defaults(obs_data_t *settings)
{
 obs_data_set_default_double(settings, SETTING_CLUT_AMOUNT, 1);
}
