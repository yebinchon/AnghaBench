
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_node {struct text_node* first_subnode; int str; struct text_node* next; struct text_leaf* leaf; } ;
struct text_leaf {int dummy; } ;


 struct text_node* bzalloc (int) ;
 int dstr_copy (int *,char const*) ;

__attribute__((used)) static void lookup_createsubnode(const char *lookup_val, struct text_leaf *leaf,
     struct text_node *node)
{
 struct text_node *new = bzalloc(sizeof(struct text_node));
 new->leaf = leaf;
 new->next = node->first_subnode;
 dstr_copy(&new->str, lookup_val);

 node->first_subnode = new;
}
