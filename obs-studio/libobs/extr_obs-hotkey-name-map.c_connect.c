
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_hotkey_name_map_node_t ;
struct TYPE_3__ {int * node; } ;
typedef TYPE_1__ obs_hotkey_name_map_edge_t ;



__attribute__((used)) static void connect(obs_hotkey_name_map_edge_t *e,
      obs_hotkey_name_map_node_t *n)
{
 e->node = n;
}
