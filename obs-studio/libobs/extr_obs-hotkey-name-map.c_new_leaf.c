
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t next_leaf; TYPE_3__* leaves; } ;
typedef TYPE_2__ obs_hotkey_name_map_t ;
struct TYPE_8__ {int is_leaf; } ;
typedef TYPE_3__ obs_hotkey_name_map_node_t ;
struct TYPE_6__ {TYPE_2__* name_map; } ;
struct TYPE_9__ {TYPE_1__ hotkeys; } ;


 TYPE_4__* obs ;

__attribute__((used)) static inline obs_hotkey_name_map_node_t *new_leaf(void)
{
 obs_hotkey_name_map_t *name_map = obs->hotkeys.name_map;
 obs_hotkey_name_map_node_t *node =
  &name_map->leaves[name_map->next_leaf];
 name_map->next_leaf += 1;

 node->is_leaf = 1;
 return node;
}
