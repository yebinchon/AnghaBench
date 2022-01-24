#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* sign ) (int,unsigned char const*,int,unsigned char*,unsigned int*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_2__*) ;} ;
typedef  TYPE_2__ EC_KEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECDSA_SIGN_EX ; 
 int /*<<< orphan*/  EC_R_OPERATION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,unsigned char const*,int,unsigned char*,unsigned int*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_2__*) ; 

int FUNC2(int type, const unsigned char *dgst, int dlen,
                  unsigned char *sig, unsigned int *siglen, const BIGNUM *kinv,
                  const BIGNUM *r, EC_KEY *eckey)
{
    if (eckey->meth->sign != NULL)
        return eckey->meth->sign(type, dgst, dlen, sig, siglen, kinv, r, eckey);
    FUNC0(EC_F_ECDSA_SIGN_EX, EC_R_OPERATION_NOT_SUPPORTED);
    return 0;
}