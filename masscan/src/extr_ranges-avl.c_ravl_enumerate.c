
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {struct RavlNode* right; struct RavlNode* left; int ip_end; int ip_begin; } ;
typedef int (* RAVL_CALLBACK ) (void*,int ,int ) ;



void
ravl_enumerate(struct RavlNode *node, RAVL_CALLBACK callback_func, void *callback_data)
{
    if (node == ((void*)0))
        return;

    callback_func(callback_data, node->ip_begin, node->ip_end);

    ravl_enumerate(node->left, callback_func, callback_data);
    ravl_enumerate(node->right, callback_func, callback_data);
}
