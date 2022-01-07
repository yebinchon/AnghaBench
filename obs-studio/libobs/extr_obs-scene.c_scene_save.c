
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene_item {struct obs_scene_item* next; } ;
struct obs_scene {int cy; int cx; scalar_t__ custom_size; int id_counter; struct obs_scene_item* first_item; } ;
typedef int obs_data_t ;
typedef int obs_data_array_t ;


 int full_lock (struct obs_scene*) ;
 int full_unlock (struct obs_scene*) ;
 int * obs_data_array_create () ;
 int obs_data_array_release (int *) ;
 int obs_data_set_array (int *,char*,int *) ;
 int obs_data_set_bool (int *,char*,scalar_t__) ;
 int obs_data_set_int (int *,char*,int ) ;
 int scene_save_item (int *,struct obs_scene_item*,int *) ;

__attribute__((used)) static void scene_save(void *data, obs_data_t *settings)
{
 struct obs_scene *scene = data;
 obs_data_array_t *array = obs_data_array_create();
 struct obs_scene_item *item;

 full_lock(scene);

 item = scene->first_item;
 while (item) {
  scene_save_item(array, item, ((void*)0));
  item = item->next;
 }

 obs_data_set_int(settings, "id_counter", scene->id_counter);
 obs_data_set_bool(settings, "custom_size", scene->custom_size);
 if (scene->custom_size) {
  obs_data_set_int(settings, "cx", scene->cx);
  obs_data_set_int(settings, "cy", scene->cy);
 }

 full_unlock(scene);

 obs_data_set_array(settings, "items", array);
 obs_data_array_release(array);
}
