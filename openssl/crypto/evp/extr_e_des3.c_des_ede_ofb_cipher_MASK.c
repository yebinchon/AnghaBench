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
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 size_t EVP_MAXCHUNK ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(EVP_CIPHER_CTX *ctx, unsigned char *out,
                              const unsigned char *in, size_t inl)
{
    while (inl >= EVP_MAXCHUNK) {
        int num = FUNC2(ctx);
        FUNC0(in, out, (long)EVP_MAXCHUNK,
                               &FUNC4(ctx)->ks1, &FUNC4(ctx)->ks2,
                               &FUNC4(ctx)->ks3,
                               (DES_cblock *)FUNC1(ctx),
                               &num);
        FUNC3(ctx, num);
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl) {
        int num = FUNC2(ctx);
        FUNC0(in, out, (long)inl,
                               &FUNC4(ctx)->ks1, &FUNC4(ctx)->ks2,
                               &FUNC4(ctx)->ks3,
                               (DES_cblock *)FUNC1(ctx),
                               &num);
        FUNC3(ctx, num);
    }
    return 1;
}