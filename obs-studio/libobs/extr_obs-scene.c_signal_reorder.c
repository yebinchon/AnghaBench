
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_scene_item {int parent; } ;
struct calldata {int dummy; } ;
typedef int stack ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int signal_parent (int ,char const*,struct calldata*) ;

__attribute__((used)) static inline void signal_reorder(struct obs_scene_item *item)
{
 const char *command = ((void*)0);
 struct calldata params;
 uint8_t stack[128];

 command = "reorder";

 calldata_init_fixed(&params, stack, sizeof(stack));
 signal_parent(item->parent, command, &params);
}
