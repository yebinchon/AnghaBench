
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* set_item_t ) (int *,int **,char const*,int **,int,int ) ;
typedef int obs_data_t ;
typedef int obs_data_item_t ;
typedef int obs_data_array_t ;


 int OBS_DATA_ARRAY ;

__attribute__((used)) static inline void obs_set_array(obs_data_t *data, obs_data_item_t **item,
     const char *name, obs_data_array_t *array,
     set_item_t set_item_)
{
 set_item_(data, item, name, &array, sizeof(obs_data_t *),
    OBS_DATA_ARRAY);
}
