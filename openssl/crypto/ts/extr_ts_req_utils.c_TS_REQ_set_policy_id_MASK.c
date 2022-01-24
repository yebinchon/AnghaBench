#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  const* policy_id; } ;
typedef  TYPE_1__ TS_REQ ;
typedef  int /*<<< orphan*/  const ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  TS_F_TS_REQ_SET_POLICY_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(TS_REQ *a, const ASN1_OBJECT *policy)
{
    ASN1_OBJECT *new_policy;

    if (a->policy_id == policy)
        return 1;
    new_policy = FUNC1(policy);
    if (new_policy == NULL) {
        FUNC2(TS_F_TS_REQ_SET_POLICY_ID, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC0(a->policy_id);
    a->policy_id = new_policy;
    return 1;
}