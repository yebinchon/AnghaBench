
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {void* height; struct RavlNode* left; struct RavlNode* right; } ;


 void* height (struct RavlNode*) ;
 void* max (void*,void*) ;

__attribute__((used)) static struct RavlNode *
single_rotate_with_left(struct RavlNode* k2)
{
    struct RavlNode* k1 = ((void*)0);

    k1 = k2->left;
    k2->left = k1->right;
    k1->right = k2;

    k2->height = max( height( k2->left ), height( k2->right ) ) + 1U;
    k1->height = max( height( k1->left ), k2->height ) + 1U;
    return k1;
}
