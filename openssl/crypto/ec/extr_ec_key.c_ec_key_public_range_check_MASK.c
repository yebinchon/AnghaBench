#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  field; int /*<<< orphan*/  meth; } ;
struct TYPE_5__ {TYPE_3__* group; int /*<<< orphan*/  pub_key; } ;
typedef  TYPE_1__ EC_KEY ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ NID_X9_62_prime_field ; 

__attribute__((used)) static int FUNC9(BN_CTX *ctx, const EC_KEY *key)
{
    int ret = 0;
    BIGNUM *x, *y;

    FUNC2(ctx);
    x = FUNC1(ctx);
    y = FUNC1(ctx);
    if (y == NULL)
        goto err;

    if (!FUNC8(key->group, key->pub_key, x, y, ctx))
        goto err;

    if (FUNC7(key->group->meth) == NID_X9_62_prime_field) {
        if (FUNC4(x)
            || FUNC3(x, key->group->field) >= 0
            || FUNC4(y)
            || FUNC3(y, key->group->field) >= 0) {
            goto err;
        }
    } else {
        int m = FUNC6(key->group);
        if (FUNC5(x) > m || FUNC5(y) > m) {
            goto err;
        }
    }
    ret = 1;
err:
    FUNC0(ctx);
    return ret;
}