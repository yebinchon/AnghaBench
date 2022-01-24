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
struct TYPE_3__ {int /*<<< orphan*/ * priv_key; } ;
typedef  TYPE_1__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  EC_F_EC_KEY_SIMPLE_OCT2PRIV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 

int FUNC3(EC_KEY *eckey, const unsigned char *buf, size_t len)
{
    if (eckey->priv_key == NULL)
        eckey->priv_key = FUNC1();
    if (eckey->priv_key == NULL) {
        FUNC2(EC_F_EC_KEY_SIMPLE_OCT2PRIV, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    eckey->priv_key = FUNC0(buf, len, eckey->priv_key);
    if (eckey->priv_key == NULL) {
        FUNC2(EC_F_EC_KEY_SIMPLE_OCT2PRIV, ERR_R_BN_LIB);
        return 0;
    }
    return 1;
}