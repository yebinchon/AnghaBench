#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  (* insert ) (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;TYPE_2__* sentinel; TYPE_2__* root; } ;
typedef  TYPE_1__ ngx_rbtree_t ;
struct TYPE_18__ {struct TYPE_18__* parent; struct TYPE_18__* left; struct TYPE_18__* right; } ;
typedef  TYPE_2__ ngx_rbtree_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 

void
FUNC6(ngx_rbtree_t *tree, ngx_rbtree_node_t *node)
{
    ngx_rbtree_node_t  **root, *temp, *sentinel;

    /* a binary tree insert */

    root = &tree->root;
    sentinel = tree->sentinel;

    if (*root == sentinel) {
        node->parent = NULL;
        node->left = sentinel;
        node->right = sentinel;
        FUNC0(node);
        *root = node;

        return;
    }

    tree->insert(*root, node, sentinel);

    /* re-balance tree */

    while (node != *root && FUNC1(node->parent)) {

        if (node->parent == node->parent->parent->left) {
            temp = node->parent->parent->right;

            if (FUNC1(temp)) {
                FUNC0(node->parent);
                FUNC0(temp);
                FUNC2(node->parent->parent);
                node = node->parent->parent;

            } else {
                if (node == node->parent->right) {
                    node = node->parent;
                    FUNC3(root, sentinel, node);
                }

                FUNC0(node->parent);
                FUNC2(node->parent->parent);
                FUNC4(root, sentinel, node->parent->parent);
            }

        } else {
            temp = node->parent->parent->left;

            if (FUNC1(temp)) {
                FUNC0(node->parent);
                FUNC0(temp);
                FUNC2(node->parent->parent);
                node = node->parent->parent;

            } else {
                if (node == node->parent->left) {
                    node = node->parent;
                    FUNC4(root, sentinel, node);
                }

                FUNC0(node->parent);
                FUNC2(node->parent->parent);
                FUNC3(root, sentinel, node->parent->parent);
            }
        }
    }

    FUNC0(*root);
}