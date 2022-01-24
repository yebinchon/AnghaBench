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
struct TYPE_6__ {int hash_id; int pkey_id; int sign_id; } ;
typedef  TYPE_1__ nid_triple ;

/* Variables and functions */
 TYPE_1__** FUNC0 (TYPE_1__ const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigoid_srt_xref ; 
 scalar_t__ sigx_app ; 
 int FUNC2 (scalar_t__,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (scalar_t__,int) ; 

int FUNC4(int *psignid, int dig_nid, int pkey_nid)
{
    nid_triple tmp;
    const nid_triple *t = &tmp;
    const nid_triple **rv = NULL;

    tmp.hash_id = dig_nid;
    tmp.pkey_id = pkey_nid;

    if (sigx_app) {
        int idx = FUNC2(sigx_app, &tmp);
        if (idx >= 0) {
            t = FUNC3(sigx_app, idx);
            rv = &t;
        }
    }
#ifndef OBJ_XREF_TEST2
    if (rv == NULL) {
        rv = FUNC0(&t, sigoid_srt_xref, FUNC1(sigoid_srt_xref));
    }
#endif
    if (rv == NULL)
        return 0;
    if (psignid)
        *psignid = (*rv)->sign_id;
    return 1;
}