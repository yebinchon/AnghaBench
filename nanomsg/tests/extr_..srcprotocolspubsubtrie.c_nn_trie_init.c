
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_trie {int * root; } ;



void nn_trie_init (struct nn_trie *self)
{
    self->root = ((void*)0);
}
