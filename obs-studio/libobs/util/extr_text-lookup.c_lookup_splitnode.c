
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ array; } ;
struct text_node {struct text_leaf* leaf; TYPE_1__ str; struct text_node* first_subnode; } ;
struct text_leaf {int dummy; } ;


 struct text_node* bzalloc (int) ;
 int dstr_copy (TYPE_1__*,scalar_t__) ;
 int dstr_resize (TYPE_1__*,size_t) ;
 int lookup_createsubnode (char const*,struct text_leaf*,struct text_node*) ;

__attribute__((used)) static void lookup_splitnode(const char *lookup_val, size_t len,
        struct text_leaf *leaf, struct text_node *node)
{
 struct text_node *split = bzalloc(sizeof(struct text_node));

 dstr_copy(&split->str, node->str.array + len);
 split->leaf = node->leaf;
 split->first_subnode = node->first_subnode;
 node->first_subnode = split;

 dstr_resize(&node->str, len);

 if (lookup_val[len] != 0) {
  node->leaf = ((void*)0);
  lookup_createsubnode(lookup_val + len, leaf, node);
 } else {
  node->leaf = leaf;
 }
}
