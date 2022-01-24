#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* pkey; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef  TYPE_3__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SM2_F_PKEY_SM2_SIGN ; 
 int /*<<< orphan*/  SM2_R_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char const*,size_t,unsigned char*,unsigned int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
                         const unsigned char *tbs, size_t tbslen)
{
    int ret;
    unsigned int sltmp;
    EC_KEY *ec = ctx->pkey->pkey.ec;
    const int sig_sz = FUNC0(ctx->pkey->pkey.ec);

    if (sig_sz <= 0) {
        return 0;
    }

    if (sig == NULL) {
        *siglen = (size_t)sig_sz;
        return 1;
    }

    if (*siglen < (size_t)sig_sz) {
        FUNC1(SM2_F_PKEY_SM2_SIGN, SM2_R_BUFFER_TOO_SMALL);
        return 0;
    }

    ret = FUNC2(tbs, tbslen, sig, &sltmp, ec);

    if (ret <= 0)
        return ret;
    *siglen = (size_t)sltmp;
    return 1;
}