
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_key_filter_data {int dummy; } ;
typedef int obs_data_t ;


 int color_settings_update (struct color_key_filter_data*,int *) ;
 int key_settings_update (struct color_key_filter_data*,int *) ;

__attribute__((used)) static void color_key_update(void *data, obs_data_t *settings)
{
 struct color_key_filter_data *filter = data;

 color_settings_update(filter, settings);
 key_settings_update(filter, settings);
}
