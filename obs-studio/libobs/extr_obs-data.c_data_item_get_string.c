
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;
typedef char const* (* get_data_t ) (int *) ;


 int OBS_DATA_STRING ;
 scalar_t__ item_valid (int *,int ) ;

__attribute__((used)) static inline const char *data_item_get_string(obs_data_item_t *item,
            get_data_t get_data)
{
 return item_valid(item, OBS_DATA_STRING) && get_data(item)
         ? get_data(item)
         : "";
}
