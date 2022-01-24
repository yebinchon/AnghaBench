#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * extra_data; } ;
typedef  TYPE_1__ X509_POLICY_TREE ;
struct TYPE_15__ {int /*<<< orphan*/  nchild; struct TYPE_15__* parent; TYPE_4__* data; } ;
typedef  TYPE_2__ X509_POLICY_NODE ;
struct TYPE_16__ {int /*<<< orphan*/ * nodes; TYPE_2__* anyPolicy; } ;
typedef  TYPE_3__ X509_POLICY_LEVEL ;
struct TYPE_17__ {int /*<<< orphan*/  valid_policy; } ;
typedef  TYPE_4__ X509_POLICY_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ NID_any_policy ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  X509V3_F_LEVEL_ADD_NODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 

X509_POLICY_NODE *FUNC8(X509_POLICY_LEVEL *level,
                                 X509_POLICY_DATA *data,
                                 X509_POLICY_NODE *parent,
                                 X509_POLICY_TREE *tree)
{
    X509_POLICY_NODE *node;

    node = FUNC1(sizeof(*node));
    if (node == NULL) {
        FUNC2(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    node->data = data;
    node->parent = parent;
    if (level) {
        if (FUNC0(data->valid_policy) == NID_any_policy) {
            if (level->anyPolicy)
                goto node_error;
            level->anyPolicy = node;
        } else {

            if (level->nodes == NULL)
                level->nodes = FUNC3();
            if (level->nodes == NULL) {
                FUNC2(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
                goto node_error;
            }
            if (!FUNC7(level->nodes, node)) {
                FUNC2(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
                goto node_error;
            }
        }
    }

    if (tree) {
        if (tree->extra_data == NULL)
            tree->extra_data = FUNC5();
        if (tree->extra_data == NULL){
            FUNC2(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
            goto node_error;
        }
        if (!FUNC6(tree->extra_data, data)) {
            FUNC2(X509V3_F_LEVEL_ADD_NODE, ERR_R_MALLOC_FAILURE);
            goto node_error;
        }
    }

    if (parent)
        parent->nchild++;

    return node;

 node_error:
    FUNC4(node);
    return NULL;
}