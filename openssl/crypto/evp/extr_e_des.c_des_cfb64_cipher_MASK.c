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
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 size_t EVP_MAXCHUNK ; 

__attribute__((used)) static int FUNC6(EVP_CIPHER_CTX *ctx, unsigned char *out,
                            const unsigned char *in, size_t inl)
{
    while (inl >= EVP_MAXCHUNK) {
        int num = FUNC4(ctx);
        FUNC0(in, out, (long)EVP_MAXCHUNK,
                          FUNC2(ctx),
                          (DES_cblock *)FUNC3(ctx), &num,
                          FUNC1(ctx));
        FUNC5(ctx, num);
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl) {
        int num = FUNC4(ctx);
        FUNC0(in, out, (long)inl,
                          FUNC2(ctx),
                          (DES_cblock *)FUNC3(ctx), &num,
                          FUNC1(ctx));
        FUNC5(ctx, num);
    }
    return 1;
}