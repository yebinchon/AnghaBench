
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {void* height; struct RavlNode* right; struct RavlNode* left; } ;


 void* height (struct RavlNode*) ;
 void* max (void*,void*) ;

__attribute__((used)) static struct RavlNode *
single_rotate_with_right(struct RavlNode* k1)
{
    struct RavlNode* k2;

    k2 = k1->right;
    k1->right = k2->left;
    k2->left = k1;

    k1->height = max( height( k1->left ), height( k1->right ) ) + 1;
    k2->height = max( height( k2->right ), k1->height ) + 1;

    return k2;
}
