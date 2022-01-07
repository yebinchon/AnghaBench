
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {unsigned int ip_begin; unsigned int ip_end; struct RavlNode* right; struct RavlNode* left; scalar_t__ height; } ;


 struct RavlNode* MALLOC (int) ;
 struct RavlNode* double_rotate_with_left (struct RavlNode*) ;
 struct RavlNode* double_rotate_with_right (struct RavlNode*) ;
 int height (struct RavlNode*) ;
 scalar_t__ max (int,int) ;
 struct RavlNode* single_rotate_with_left (struct RavlNode*) ;
 struct RavlNode* single_rotate_with_right (struct RavlNode*) ;

struct RavlNode *
ravl_insert(unsigned ip_begin, unsigned ip_end, struct RavlNode *node)
{
    if (node == ((void*)0)) {
        node = MALLOC(sizeof(struct RavlNode));
        node->ip_begin = ip_begin;
        node->ip_end = ip_end;
        node->height = 0;
        node->left = node->right = ((void*)0);
    } else if (ip_begin < node->ip_begin) {
        node->left = ravl_insert(ip_begin, ip_end, node->left);

        if (height(node->left) - height(node->right) == 2) {
            if (ip_begin < node->left->ip_begin)
                node = single_rotate_with_left(node);
            else
                node = double_rotate_with_left(node);
        }
    } else if (ip_begin > node->ip_begin) {
        node->right = ravl_insert(ip_begin, ip_end, node->right);

        if (height(node->right) - height(node->left) == 2) {
            if (ip_begin > node->right->ip_begin)
                node = single_rotate_with_right(node);
            else
                node = double_rotate_with_right(node);
        }
    } else {

        ;
    }

    node->height = max( height( node->left ), height( node->right ) ) + 1;

    return node;
}
