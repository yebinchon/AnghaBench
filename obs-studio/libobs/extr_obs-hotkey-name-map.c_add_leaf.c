
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int children; } ;
typedef TYPE_1__ obs_hotkey_name_map_node_t ;
struct TYPE_9__ {TYPE_4__* node; } ;
typedef TYPE_2__ obs_hotkey_name_map_edge_t ;
struct TYPE_10__ {int val; } ;


 TYPE_2__* da_push_back_new (int ) ;
 TYPE_4__* new_leaf () ;
 int set_prefix (TYPE_2__*,char const*,size_t) ;

__attribute__((used)) static obs_hotkey_name_map_edge_t *add_leaf(obs_hotkey_name_map_node_t *node,
         const char *key, size_t l, int v)
{
 obs_hotkey_name_map_edge_t *e = da_push_back_new(node->children);

 set_prefix(e, key, l);

 e->node = new_leaf();
 e->node->val = v;

 return e;
}
