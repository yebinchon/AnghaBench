
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;
 int obs_data_set_default_int (int *,char*,int) ;

__attribute__((used)) static void scroll_filter_defaults(obs_data_t *settings)
{
 obs_data_set_default_bool(settings, "limit_size", 0);
 obs_data_set_default_int(settings, "cx", 100);
 obs_data_set_default_int(settings, "cy", 100);
 obs_data_set_default_bool(settings, "loop", 1);
}
