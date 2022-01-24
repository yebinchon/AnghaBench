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
struct TYPE_8__ {int /*<<< orphan*/  engine; int /*<<< orphan*/  libctx; } ;
typedef  TYPE_1__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

EC_KEY *FUNC3(const EC_KEY *ec_key)
{
    EC_KEY *ret = FUNC2(ec_key->libctx, ec_key->engine);

    if (ret == NULL)
        return NULL;

    if (FUNC0(ret, ec_key) == NULL) {
        FUNC1(ret);
        return NULL;
    }
    return ret;
}