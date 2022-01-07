
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t num; TYPE_4__* array; } ;
struct TYPE_9__ {int val; TYPE_1__ children; int is_leaf; } ;
struct TYPE_8__ {TYPE_3__ root; } ;
typedef TYPE_2__ obs_hotkey_name_map_t ;
typedef TYPE_3__ obs_hotkey_name_map_node_t ;
struct TYPE_10__ {size_t prefix_len; TYPE_3__* node; } ;
typedef TYPE_4__ obs_hotkey_name_map_edge_t ;






 int compare_prefix (TYPE_4__*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool obs_hotkey_name_map_lookup(obs_hotkey_name_map_t *trie,
           const char *key, int *v)
{
 if (!trie || !key)
  return 0;

 size_t len = strlen(key);
 obs_hotkey_name_map_node_t *n = &trie->root;

 size_t i = 0;
 for (; i < n->children.num;) {
  obs_hotkey_name_map_edge_t *e = &n->children.array[i];

  switch (compare_prefix(e, key, len)) {
  case 129:
   i++;
   continue;

  case 131:
   return 0;

  case 128:
   key += e->prefix_len;
   len -= e->prefix_len;
   n = e->node;
   i = 0;
   continue;

  case 130:
   n = e->node;
   if (!n->is_leaf) {
    for (size_t j = 0; j < n->children.num; j++) {
     if (n->children.array[j].prefix_len)
      continue;

     if (v)
      *v = n->children.array[j]
            .node->val;
     return 1;
    }
    return 0;
   }

   if (v)
    *v = n->val;
   return 1;
  }
 }

 return 0;
}
