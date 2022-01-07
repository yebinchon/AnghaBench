
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num; int * array; } ;
struct TYPE_5__ {int is_leaf; TYPE_3__ children; } ;
typedef TYPE_1__ obs_hotkey_name_map_node_t ;


 int bfree (TYPE_1__*) ;
 int da_free (TYPE_3__) ;
 int free_edge (int *) ;

__attribute__((used)) static void free_node(obs_hotkey_name_map_node_t *node, bool release)
{
 if (!node->is_leaf) {
  for (size_t i = 0; i < node->children.num; i++)
   free_edge(&node->children.array[i]);

  da_free(node->children);
 }

 if (release && !node->is_leaf)
  bfree(node);
}
