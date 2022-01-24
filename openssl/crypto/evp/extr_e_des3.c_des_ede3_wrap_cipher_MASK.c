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
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_F_DES_EDE3_WRAP_CIPHER ; 
 size_t EVP_MAXCHUNK ; 
 int /*<<< orphan*/  EVP_R_PARTIALLY_OVERLAPPING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned char const*,size_t) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC5(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                const unsigned char *in, size_t inl)
{
    /*
     * Sanity check input length: we typically only wrap keys so EVP_MAXCHUNK
     * is more than will ever be needed. Also input length must be a multiple
     * of 8 bits.
     */
    if (inl >= EVP_MAXCHUNK || inl % 8)
        return -1;

    if (FUNC4(out, in, inl)) {
        FUNC1(EVP_F_DES_EDE3_WRAP_CIPHER, EVP_R_PARTIALLY_OVERLAPPING);
        return 0;
    }

    if (FUNC0(ctx))
        return FUNC3(ctx, out, in, inl);
    else
        return FUNC2(ctx, out, in, inl);
}