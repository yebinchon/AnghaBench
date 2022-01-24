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
struct TYPE_8__ {int /*<<< orphan*/ * group; TYPE_1__* meth; } ;
struct TYPE_7__ {scalar_t__ (* set_group ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_2__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

EC_KEY *FUNC4(OPENSSL_CTX *ctx, int nid)
{
    EC_KEY *ret = FUNC2(ctx);
    if (ret == NULL)
        return NULL;
    ret->group = FUNC0(ctx, nid);
    if (ret->group == NULL) {
        FUNC1(ret);
        return NULL;
    }
    if (ret->meth->set_group != NULL
        && ret->meth->set_group(ret, ret->group) == 0) {
        FUNC1(ret);
        return NULL;
    }
    return ret;
}