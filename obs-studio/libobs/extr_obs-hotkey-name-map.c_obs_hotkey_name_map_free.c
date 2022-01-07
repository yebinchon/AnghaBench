
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* leaves; int root; } ;
struct TYPE_4__ {TYPE_3__* name_map; } ;
struct TYPE_5__ {TYPE_1__ hotkeys; } ;


 int bfree (TYPE_3__*) ;
 int free_node (int *,int) ;
 TYPE_2__* obs ;

void obs_hotkey_name_map_free(void)
{
 if (!obs || !obs->hotkeys.name_map)
  return;

 free_node(&obs->hotkeys.name_map->root, 0);
 bfree(obs->hotkeys.name_map->leaves);
 bfree(obs->hotkeys.name_map);
}
