
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ obs_hotkey_name_map_t ;


 int show_node (int *,int ) ;

void trie_print_size(obs_hotkey_name_map_t *trie)
{
 show_node(&trie->root, 0);
}
