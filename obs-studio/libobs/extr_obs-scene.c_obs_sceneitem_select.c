
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct calldata {int dummy; } ;
typedef int stack ;
struct TYPE_4__ {int selected; int parent; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_1__*) ;
 int signal_parent (int ,char const*,struct calldata*) ;

void obs_sceneitem_select(obs_sceneitem_t *item, bool select)
{
 struct calldata params;
 uint8_t stack[128];
 const char *command = select ? "item_select" : "item_deselect";

 if (!item || item->selected == select || !item->parent)
  return;

 item->selected = select;

 calldata_init_fixed(&params, stack, sizeof(stack));
 calldata_set_ptr(&params, "item", item);

 signal_parent(item->parent, command, &params);
}
