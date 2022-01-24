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
struct TYPE_5__ {int flags; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ RSA_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  RSA_F_RSA_METH_NEW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

RSA_METHOD *FUNC4(const char *name, int flags)
{
    RSA_METHOD *meth = FUNC2(sizeof(*meth));

    if (meth != NULL) {
        meth->flags = flags;

        meth->name = FUNC1(name);
        if (meth->name != NULL)
            return meth;

        FUNC0(meth);
    }

    FUNC3(RSA_F_RSA_METH_NEW, ERR_R_MALLOC_FAILURE);
    return NULL;
}