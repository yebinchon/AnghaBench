
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_scene_item {int parent; } ;
struct calldata {int dummy; } ;
typedef int stack ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_ptr (struct calldata*,char*,struct obs_scene_item*) ;
 int signal_parent (int ,char*,struct calldata*) ;

__attribute__((used)) static inline void signal_item_remove(struct obs_scene_item *item)
{
 struct calldata params;
 uint8_t stack[128];

 calldata_init_fixed(&params, stack, sizeof(stack));
 calldata_set_ptr(&params, "item", item);

 signal_parent(item->parent, "item_remove", &params);
}
