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
struct TYPE_5__ {int /*<<< orphan*/  (* compute_key ) (unsigned char**,size_t*,int /*<<< orphan*/  const*,TYPE_2__ const*) ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_2__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECDH_COMPUTE_KEY ; 
 int /*<<< orphan*/  EC_R_INVALID_OUTPUT_LENGTH ; 
 int /*<<< orphan*/  EC_R_OPERATION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,size_t*,int /*<<< orphan*/  const*,TYPE_2__ const*) ; 

int FUNC4(void *out, size_t outlen, const EC_POINT *pub_key,
                     const EC_KEY *eckey,
                     void *(*KDF) (const void *in, size_t inlen, void *out,
                                   size_t *outlen))
{
    unsigned char *sec = NULL;
    size_t seclen;
    if (eckey->meth->compute_key == NULL) {
        FUNC0(EC_F_ECDH_COMPUTE_KEY, EC_R_OPERATION_NOT_SUPPORTED);
        return 0;
    }
    if (outlen > INT_MAX) {
        FUNC0(EC_F_ECDH_COMPUTE_KEY, EC_R_INVALID_OUTPUT_LENGTH);
        return 0;
    }
    if (!eckey->meth->compute_key(&sec, &seclen, pub_key, eckey))
        return 0;
    if (KDF != NULL) {
        KDF(sec, seclen, out, &outlen);
    } else {
        if (outlen > seclen)
            outlen = seclen;
        FUNC2(out, sec, outlen);
    }
    FUNC1(sec, seclen);
    return outlen;
}