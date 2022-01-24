#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nlevel; struct TYPE_5__* levels; int /*<<< orphan*/  extra_data; int /*<<< orphan*/  anyPolicy; int /*<<< orphan*/  nodes; int /*<<< orphan*/  cert; int /*<<< orphan*/  user_policies; int /*<<< orphan*/  auth_policies; } ;
typedef  TYPE_1__ X509_POLICY_TREE ;
typedef  TYPE_1__ X509_POLICY_LEVEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  policy_data_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 

void FUNC7(X509_POLICY_TREE *tree)
{
    X509_POLICY_LEVEL *curr;
    int i;

    if (!tree)
        return;

    FUNC5(tree->auth_policies);
    FUNC6(tree->user_policies, exnode_free);

    for (i = 0, curr = tree->levels; i < tree->nlevel; i++, curr++) {
        FUNC1(curr->cert);
        FUNC6(curr->nodes, policy_node_free);
        FUNC3(curr->anyPolicy);
    }

    FUNC4(tree->extra_data, policy_data_free);
    FUNC0(tree->levels);
    FUNC0(tree);

}