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
struct TYPE_5__ {int sign_id; int hash_id; int pkey_id; } ;
typedef  TYPE_1__ nid_triple ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OBJ_F_OBJ_ADD_SIGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * sig_app ; 
 int /*<<< orphan*/  sig_sk_cmp ; 
 int /*<<< orphan*/ * sigx_app ; 
 int /*<<< orphan*/  sigx_cmp ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(int signid, int dig_id, int pkey_id)
{
    nid_triple *ntr;
    if (sig_app == NULL)
        sig_app = FUNC3(sig_sk_cmp);
    if (sig_app == NULL)
        return 0;
    if (sigx_app == NULL)
        sigx_app = FUNC3(sigx_cmp);
    if (sigx_app == NULL)
        return 0;
    if ((ntr = FUNC2(sizeof(*ntr))) == NULL) {
        FUNC0(OBJ_F_OBJ_ADD_SIGID, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ntr->sign_id = signid;
    ntr->hash_id = dig_id;
    ntr->pkey_id = pkey_id;

    if (!FUNC4(sig_app, ntr)) {
        FUNC1(ntr);
        return 0;
    }

    if (!FUNC4(sigx_app, ntr))
        return 0;

    FUNC5(sig_app);
    FUNC5(sigx_app);

    return 1;
}