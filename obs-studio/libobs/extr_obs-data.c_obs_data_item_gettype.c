
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ obs_data_item_t ;
typedef enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;


 int OBS_DATA_NULL ;

enum obs_data_type obs_data_item_gettype(obs_data_item_t *item)
{
 return item ? item->type : OBS_DATA_NULL;
}
