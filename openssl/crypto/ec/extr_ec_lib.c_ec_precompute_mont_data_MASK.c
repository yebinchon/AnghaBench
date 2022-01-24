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
struct TYPE_3__ {int /*<<< orphan*/ * mont_data; int /*<<< orphan*/  order; int /*<<< orphan*/  libctx; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(EC_GROUP *group)
{
    BN_CTX *ctx = FUNC1(group->libctx);
    int ret = 0;

    FUNC2(group->mont_data);
    group->mont_data = NULL;

    if (ctx == NULL)
        goto err;

    group->mont_data = FUNC3();
    if (group->mont_data == NULL)
        goto err;

    if (!FUNC4(group->mont_data, group->order, ctx)) {
        FUNC2(group->mont_data);
        group->mont_data = NULL;
        goto err;
    }

    ret = 1;

 err:

    FUNC0(ctx);
    return ret;
}