#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * mdctx; } ;
typedef  TYPE_1__ PROV_DSA_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int EVP_MAX_MD_SIZE ; 
 int FUNC1 (void*,unsigned char const*,size_t,unsigned char*,size_t) ; 

int FUNC2(void *vpdsactx, const unsigned char *sig,
                            size_t siglen)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    unsigned char digest[EVP_MAX_MD_SIZE];
    unsigned int dlen = 0;

    if (pdsactx == NULL || pdsactx->mdctx == NULL)
        return 0;

    /*
     * TODO(3.0): There is the possibility that some externally provided
     * digests exceed EVP_MAX_MD_SIZE. We should probably handle that somehow -
     * but that problem is much larger than just in DSA.
     */
    if (!FUNC0(pdsactx->mdctx, digest, &dlen))
        return 0;

    return FUNC1(vpdsactx, sig, siglen, digest, (size_t)dlen);
}