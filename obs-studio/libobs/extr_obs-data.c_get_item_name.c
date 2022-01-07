
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int dummy; } ;



__attribute__((used)) static inline char *get_item_name(struct obs_data_item *item)
{
 return (char *)item + sizeof(struct obs_data_item);
}
