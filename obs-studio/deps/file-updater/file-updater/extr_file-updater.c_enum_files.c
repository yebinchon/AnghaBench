
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_array_t ;


 size_t obs_data_array_count (int *) ;
 int * obs_data_array_item (int *,size_t) ;
 int obs_data_array_release (int *) ;
 int * obs_data_get_array (int *,char*) ;
 int obs_data_release (int *) ;

__attribute__((used)) static void enum_files(obs_data_t *package,
         bool (*enum_func)(void *param, obs_data_t *file),
         void *param)
{
 obs_data_array_t *array = obs_data_get_array(package, "files");
 size_t num;

 if (!array)
  return;

 num = obs_data_array_count(array);

 for (size_t i = 0; i < num; i++) {
  obs_data_t *file = obs_data_array_item(array, i);
  bool continue_enum = enum_func(param, file);
  obs_data_release(file);

  if (!continue_enum)
   break;
 }

 obs_data_array_release(array);
}
