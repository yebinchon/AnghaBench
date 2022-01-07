
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_trie {int root; } ;


 int lwan_trie_node_destroy (struct lwan_trie*,int ) ;

void lwan_trie_destroy(struct lwan_trie *trie)
{
    if (!trie || !trie->root)
        return;
    lwan_trie_node_destroy(trie, trie->root);
}
