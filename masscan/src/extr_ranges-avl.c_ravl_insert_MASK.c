#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RavlNode {unsigned int ip_begin; unsigned int ip_end; struct RavlNode* right; struct RavlNode* left; scalar_t__ height; } ;

/* Variables and functions */
 struct RavlNode* FUNC0 (int) ; 
 struct RavlNode* FUNC1 (struct RavlNode*) ; 
 struct RavlNode* FUNC2 (struct RavlNode*) ; 
 int FUNC3 (struct RavlNode*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 struct RavlNode* FUNC5 (struct RavlNode*) ; 
 struct RavlNode* FUNC6 (struct RavlNode*) ; 

struct RavlNode * 
FUNC7(unsigned ip_begin, unsigned ip_end, struct RavlNode *node)
{
    if (node == NULL) {
        node = FUNC0(sizeof(struct RavlNode));
        node->ip_begin = ip_begin;
        node->ip_end = ip_end;
        node->height = 0;
        node->left = node->right = NULL;
    } else if (ip_begin < node->ip_begin) {
        node->left = FUNC7(ip_begin, ip_end, node->left);
        
        if (FUNC3(node->left) - FUNC3(node->right) == 2) {
            if (ip_begin < node->left->ip_begin)
                node = FUNC5(node);
            else
                node = FUNC1(node);
        }
    } else if (ip_begin > node->ip_begin) {
        node->right = FUNC7(ip_begin, ip_end, node->right);

        if (FUNC3(node->right) - FUNC3(node->left) == 2) {
            if (ip_begin > node->right->ip_begin)
                node = FUNC6(node);
            else
                node = FUNC2(node);
        }
    } else {
        /* ip_begin == node->ip_begin*/
        ;
    }

    node->height = FUNC4( FUNC3( node->left ), FUNC3( node->right ) ) + 1;

    return node;
}