
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_trie_node {scalar_t__ ref_count; struct lwan_trie_node** next; struct lwan_trie_node* key; int data; struct lwan_trie_node* leaf; } ;
struct lwan_trie_leaf {scalar_t__ ref_count; struct lwan_trie_leaf** next; struct lwan_trie_leaf* key; int data; struct lwan_trie_leaf* leaf; } ;
struct lwan_trie {int (* free_node ) (int ) ;} ;
typedef scalar_t__ int32_t ;


 int free (struct lwan_trie_node*) ;
 int stub1 (int ) ;

__attribute__((used)) static void lwan_trie_node_destroy(struct lwan_trie *trie,
                                   struct lwan_trie_node *node)
{
    if (!node)
        return;

    int32_t nodes_destroyed = node->ref_count;

    for (struct lwan_trie_leaf *leaf = node->leaf; leaf;) {
        struct lwan_trie_leaf *tmp = leaf->next;

        if (trie->free_node)
            trie->free_node(leaf->data);

        free(leaf->key);
        free(leaf);
        leaf = tmp;
    }

    for (int32_t i = 0; nodes_destroyed > 0 && i < 8; i++) {
        if (node->next[i]) {
            lwan_trie_node_destroy(trie, node->next[i]);
            --nodes_destroyed;
        }
    }

    free(node);
}
