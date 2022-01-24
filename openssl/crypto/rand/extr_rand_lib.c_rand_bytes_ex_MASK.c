#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* bytes ) (unsigned char*,int) ;} ;
typedef  TYPE_1__ RAND_METHOD ;
typedef  int /*<<< orphan*/  RAND_DRBG ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  RAND_F_RAND_BYTES_EX ; 
 TYPE_1__ const* FUNC2 () ; 
 int /*<<< orphan*/  RAND_R_FUNC_NOT_IMPLEMENTED ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned char*,int) ; 

int FUNC6(OPENSSL_CTX *ctx, unsigned char *buf, int num)
{
    RAND_DRBG *drbg;
    int ret;
    const RAND_METHOD *meth = FUNC3();

    if (meth != FUNC2()) {
        if (meth->bytes != NULL)
            return meth->bytes(buf, num);
        FUNC4(RAND_F_RAND_BYTES_EX, RAND_R_FUNC_NOT_IMPLEMENTED);
        return -1;
    }

    drbg = FUNC0(ctx);
    if (drbg == NULL)
        return 0;

    ret = FUNC1(drbg, buf, num);
    return ret;
}