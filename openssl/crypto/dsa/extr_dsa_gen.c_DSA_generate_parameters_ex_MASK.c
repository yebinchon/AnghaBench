#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* dsa_paramgen ) (TYPE_2__*,int,unsigned char const*,int,int*,unsigned long*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_2__ DSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (TYPE_2__*,int,size_t,int /*<<< orphan*/  const*,unsigned char const*,int,int /*<<< orphan*/ *,int*,unsigned long*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int,unsigned char const*,int,int*,unsigned long*,int /*<<< orphan*/ *) ; 

int FUNC5(DSA *ret, int bits,
                               const unsigned char *seed_in, int seed_len,
                               int *counter_ret, unsigned long *h_ret,
                               BN_GENCB *cb)
{
    if (ret->meth->dsa_paramgen)
        return ret->meth->dsa_paramgen(ret, bits, seed_in, seed_len,
                                       counter_ret, h_ret, cb);
    else {
        const EVP_MD *evpmd = bits >= 2048 ? FUNC2() : FUNC1();
        size_t qbits = FUNC0(evpmd) * 8;

        return FUNC3(ret, bits, qbits, evpmd,
                                    seed_in, seed_len, NULL, counter_ret,
                                    h_ret, cb);
    }
}