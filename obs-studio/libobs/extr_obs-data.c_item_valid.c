
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int type; } ;
typedef enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;



__attribute__((used)) static inline bool item_valid(struct obs_data_item *item,
         enum obs_data_type type)
{
 return item && item->type == type;
}
