#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PROV_AES_XTS_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_CIPHER_OPERATION_FAILED ; 
 int /*<<< orphan*/  PROV_R_OUTPUT_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t*,size_t,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC2(void *vctx, unsigned char *out, size_t *outl,
                                 size_t outsize, const unsigned char *in,
                                 size_t inl)
{
    PROV_AES_XTS_CTX *ctx = (PROV_AES_XTS_CTX *)vctx;

    if (outsize < inl) {
        FUNC0(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
        return 0;
    }

    if (!FUNC1(ctx, out, outl, outsize, in, inl)) {
        FUNC0(ERR_LIB_PROV, PROV_R_CIPHER_OPERATION_FAILED);
        return 0;
    }

    return 1;
}