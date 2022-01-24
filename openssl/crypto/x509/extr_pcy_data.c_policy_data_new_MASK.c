#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * qualifier_set; int /*<<< orphan*/ * valid_policy; int /*<<< orphan*/  flags; int /*<<< orphan*/ * expected_policy_set; } ;
typedef  TYPE_1__ X509_POLICY_DATA ;
struct TYPE_8__ {int /*<<< orphan*/ * qualifiers; int /*<<< orphan*/ * policyid; } ;
typedef  TYPE_2__ POLICYINFO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  POLICY_DATA_FLAG_CRITICAL ; 
 int /*<<< orphan*/  X509V3_F_POLICY_DATA_NEW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

X509_POLICY_DATA *FUNC6(POLICYINFO *policy,
                                  const ASN1_OBJECT *cid, int crit)
{
    X509_POLICY_DATA *ret;
    ASN1_OBJECT *id;

    if (policy == NULL && cid == NULL)
        return NULL;
    if (cid) {
        id = FUNC1(cid);
        if (id == NULL)
            return NULL;
    } else
        id = NULL;
    ret = FUNC3(sizeof(*ret));
    if (ret == NULL) {
        FUNC4(X509V3_F_POLICY_DATA_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    ret->expected_policy_set = FUNC5();
    if (ret->expected_policy_set == NULL) {
        FUNC2(ret);
        FUNC0(id);
        FUNC4(X509V3_F_POLICY_DATA_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (crit)
        ret->flags = POLICY_DATA_FLAG_CRITICAL;

    if (id)
        ret->valid_policy = id;
    else {
        ret->valid_policy = policy->policyid;
        policy->policyid = NULL;
    }

    if (policy) {
        ret->qualifier_set = policy->qualifiers;
        policy->qualifiers = NULL;
    }

    return ret;
}