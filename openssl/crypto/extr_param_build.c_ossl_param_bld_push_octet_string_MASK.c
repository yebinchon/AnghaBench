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
struct TYPE_3__ {void const* string; } ;
typedef  TYPE_1__ OSSL_PARAM_BLD_DEF ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_STRING ; 
 int /*<<< orphan*/  CRYPTO_R_STRING_TOO_LONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  OSSL_PARAM_OCTET_STRING ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(OSSL_PARAM_BLD *bld, const char *key,
                                     const void *buf, size_t bsize)
{
    OSSL_PARAM_BLD_DEF *pd;

    if (bsize > INT_MAX) {
        FUNC0(CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_STRING,
                  CRYPTO_R_STRING_TOO_LONG);
        return 0;
    }
    pd = FUNC1(bld, key, bsize, bsize, OSSL_PARAM_OCTET_STRING, 0);
    if (pd == NULL)
        return 0;
    pd->string = buf;
    return 1;
}