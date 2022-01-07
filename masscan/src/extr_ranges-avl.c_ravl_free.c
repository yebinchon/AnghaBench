
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {struct RavlNode* right; struct RavlNode* left; } ;


 int free (struct RavlNode*) ;

void
ravl_free(struct RavlNode *node)
{
    if (node != ((void*)0)) {
        ravl_free(node->left);
        ravl_free(node->right);
        free(node);
    }
}
