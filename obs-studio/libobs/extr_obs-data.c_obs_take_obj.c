
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set_item_t ;
typedef int obs_data_t ;
typedef int obs_data_item_t ;


 int obs_data_release (int *) ;
 int obs_set_obj (int *,int **,char const*,int *,int ) ;

__attribute__((used)) static inline void obs_take_obj(obs_data_t *data, obs_data_item_t **item,
    const char *name, obs_data_t *obj,
    set_item_t set_item_)
{
 obs_set_obj(data, item, name, obj, set_item_);
 obs_data_release(obj);
}
