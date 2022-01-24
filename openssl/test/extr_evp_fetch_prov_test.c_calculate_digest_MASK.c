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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(const EVP_MD *md, const char *msg, size_t len,
                            const unsigned char *exptd)
{
    unsigned char out[SHA256_DIGEST_LENGTH];
    EVP_MD_CTX *ctx;
    int ret = 0;

    if (!FUNC7(ctx = FUNC5())
            || !FUNC8(FUNC1(ctx, md, NULL))
            || !FUNC8(FUNC2(ctx, msg, len))
            || !FUNC8(FUNC0(ctx, out, NULL))
            || !FUNC6(out, SHA256_DIGEST_LENGTH, exptd,
                            SHA256_DIGEST_LENGTH)
            || !FUNC8(md == FUNC4(ctx)))
        goto err;

    ret = 1;
 err:
    FUNC3(ctx);
    return ret;
}