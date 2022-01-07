
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_wipe_info {int wipes_list; } ;
typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_item_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int S_LUMA_IMG ;
 int S_LUMA_INV ;
 int S_LUMA_SOFT ;
 int T_LUMA_IMG ;
 int T_LUMA_INV ;
 int T_LUMA_SOFT ;
 int * obs_data_first (int ) ;
 char* obs_data_item_get_name (int *) ;
 char* obs_data_item_get_string (int *) ;
 int obs_data_item_next (int **) ;
 int obs_module_text (char const*) ;
 int obs_properties_add_bool (int *,int ,int ) ;
 int obs_properties_add_float (int *,int ,int ,double,double,double) ;
 int * obs_properties_add_list (int *,int ,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_add_string (int *,int ,char const*) ;

__attribute__((used)) static obs_properties_t *luma_wipe_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();
 struct luma_wipe_info *lwipe = data;

 obs_property_t *p;

 p = obs_properties_add_list(props, S_LUMA_IMG, T_LUMA_IMG,
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);

 obs_data_item_t *item = obs_data_first(lwipe->wipes_list);

 for (; item != ((void*)0); obs_data_item_next(&item)) {
  const char *name = obs_data_item_get_name(item);
  const char *path = obs_data_item_get_string(item);
  obs_property_list_add_string(p, obs_module_text(name), path);
 }

 obs_properties_add_float(props, S_LUMA_SOFT, T_LUMA_SOFT, 0.0, 1.0,
     0.05);
 obs_properties_add_bool(props, S_LUMA_INV, T_LUMA_INV);

 return props;
}
