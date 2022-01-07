
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_data {int type; } ;
typedef int obs_property_t ;
typedef enum obs_path_type { ____Placeholder_obs_path_type } obs_path_type ;


 int OBS_PATH_DIRECTORY ;
 int OBS_PROPERTY_PATH ;
 struct path_data* get_type_data (int *,int ) ;

enum obs_path_type obs_property_path_type(obs_property_t *p)
{
 struct path_data *data = get_type_data(p, OBS_PROPERTY_PATH);
 return data ? data->type : OBS_PATH_DIRECTORY;
}
