
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ prefix_len; int node; } ;
typedef TYPE_1__ obs_hotkey_name_map_edge_t ;


 scalar_t__ NAME_MAP_COMPRESS_LENGTH ;
 int bfree (int ) ;
 int free_node (int ,int) ;
 int get_prefix (TYPE_1__*) ;

__attribute__((used)) static void free_edge(obs_hotkey_name_map_edge_t *edge)
{
 free_node(edge->node, 1);

 if (edge->prefix_len < NAME_MAP_COMPRESS_LENGTH)
  return;

 bfree(get_prefix(edge));
}
