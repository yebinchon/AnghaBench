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
struct TYPE_5__ {int /*<<< orphan*/ * public_key; int /*<<< orphan*/  log_id; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ CTLOG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CT_F_CTLOG_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

CTLOG *FUNC5(EVP_PKEY *public_key, const char *name)
{
    CTLOG *ret = FUNC3(sizeof(*ret));

    if (ret == NULL) {
        FUNC1(CT_F_CTLOG_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->name = FUNC2(name);
    if (ret->name == NULL) {
        FUNC1(CT_F_CTLOG_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC4(public_key, ret->log_id) != 1)
        goto err;

    ret->public_key = public_key;
    return ret;
err:
    FUNC0(ret);
    return NULL;
}