#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* sn; char* ln; int /*<<< orphan*/  nid; } ;
typedef  TYPE_1__ ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ NID_undef ; 
 int /*<<< orphan*/  OBJ_F_OBJ_CREATE ; 
 int /*<<< orphan*/  OBJ_R_OID_EXISTS ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 TYPE_1__* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(const char *oid, const char *sn, const char *ln)
{
    ASN1_OBJECT *tmpoid = NULL;
    int ok = 0;

    /* Check to see if short or long name already present */
    if ((sn != NULL && FUNC5(sn) != NID_undef)
            || (ln != NULL && FUNC2(ln) != NID_undef)) {
        FUNC7(OBJ_F_OBJ_CREATE, OBJ_R_OID_EXISTS);
        return 0;
    }

    /* Convert numerical OID string to an ASN1_OBJECT structure */
    tmpoid = FUNC6(oid, 1);
    if (tmpoid == NULL)
        return 0;

    /* If NID is not NID_undef then object already exists */
    if (FUNC4(tmpoid) != NID_undef) {
        FUNC7(OBJ_F_OBJ_CREATE, OBJ_R_OID_EXISTS);
        goto err;
    }

    tmpoid->nid = FUNC3(1);
    tmpoid->sn = (char *)sn;
    tmpoid->ln = (char *)ln;

    ok = FUNC1(tmpoid);

    tmpoid->sn = NULL;
    tmpoid->ln = NULL;

 err:
    FUNC0(tmpoid);
    return ok;
}