#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/ * g; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; } ;
struct TYPE_6__ {TYPE_5__* dsa; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 () ; 

__attribute__((used)) static int FUNC3(EVP_PKEY *to, const EVP_PKEY *from)
{
    BIGNUM *a;

    if (to->pkey.dsa == NULL) {
        to->pkey.dsa = FUNC2();
        if (to->pkey.dsa == NULL)
            return 0;
    }

    if ((a = FUNC0(from->pkey.dsa->p)) == NULL)
        return 0;
    FUNC1(to->pkey.dsa->p);
    to->pkey.dsa->p = a;

    if ((a = FUNC0(from->pkey.dsa->q)) == NULL)
        return 0;
    FUNC1(to->pkey.dsa->q);
    to->pkey.dsa->q = a;

    if ((a = FUNC0(from->pkey.dsa->g)) == NULL)
        return 0;
    FUNC1(to->pkey.dsa->g);
    to->pkey.dsa->g = a;
    to->pkey.dsa->dirty_cnt++;
    return 1;
}