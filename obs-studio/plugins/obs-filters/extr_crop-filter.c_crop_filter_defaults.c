
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_data_set_default_bool (int *,char*,int) ;

__attribute__((used)) static void crop_filter_defaults(obs_data_t *settings)
{
 obs_data_set_default_bool(settings, "relative", 1);
}
