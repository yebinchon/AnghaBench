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
struct TYPE_2__ {int /*<<< orphan*/  ks3; int /*<<< orphan*/  ks2; int /*<<< orphan*/  ks1; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 size_t EVP_MAXCHUNK ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                const unsigned char *in, size_t inl)
{
    while (inl >= EVP_MAXCHUNK) {
        int num = FUNC3(ctx);
        FUNC0(in, out, (long)EVP_MAXCHUNK,
                               &FUNC5(ctx)->ks1, &FUNC5(ctx)->ks2,
                               &FUNC5(ctx)->ks3,
                               (DES_cblock *)FUNC2(ctx),
                               &num, FUNC1(ctx));
        FUNC4(ctx, num);
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl) {
        int num = FUNC3(ctx);
        FUNC0(in, out, (long)inl,
                               &FUNC5(ctx)->ks1, &FUNC5(ctx)->ks2,
                               &FUNC5(ctx)->ks3,
                               (DES_cblock *)FUNC2(ctx),
                               &num, FUNC1(ctx));
        FUNC4(ctx, num);
    }
    return 1;
}