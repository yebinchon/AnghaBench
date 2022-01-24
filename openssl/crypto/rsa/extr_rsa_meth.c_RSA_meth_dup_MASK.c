#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ RSA_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_F_RSA_METH_DUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__ const*,int) ; 

RSA_METHOD *FUNC5(const RSA_METHOD *meth)
{
    RSA_METHOD *ret = FUNC1(sizeof(*ret));

    if (ret != NULL) {
        FUNC4(ret, meth, sizeof(*meth));

        ret->name = FUNC2(meth->name);
        if (ret->name != NULL)
            return ret;

        FUNC0(ret);
    }

    FUNC3(RSA_F_RSA_METH_DUP, ERR_R_MALLOC_FAILURE);
    return NULL;
}