#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* data; struct TYPE_9__ const* parent; } ;
typedef  TYPE_2__ X509_POLICY_NODE ;
struct TYPE_10__ {int /*<<< orphan*/  nodes; } ;
typedef  TYPE_3__ X509_POLICY_LEVEL ;
struct TYPE_8__ {int /*<<< orphan*/  valid_policy; } ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int) ; 

X509_POLICY_NODE *FUNC3(const X509_POLICY_LEVEL *level,
                                  const X509_POLICY_NODE *parent,
                                  const ASN1_OBJECT *id)
{
    X509_POLICY_NODE *node;
    int i;
    for (i = 0; i < FUNC1(level->nodes); i++) {
        node = FUNC2(level->nodes, i);
        if (node->parent == parent) {
            if (!FUNC0(node->data->valid_policy, id))
                return node;
        }
    }
    return NULL;
}