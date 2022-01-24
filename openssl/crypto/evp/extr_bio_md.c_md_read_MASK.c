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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 

__attribute__((used)) static int FUNC7(BIO *b, char *out, int outl)
{
    int ret = 0;
    EVP_MD_CTX *ctx;
    BIO *next;

    if (out == NULL)
        return 0;

    ctx = FUNC2(b);
    next = FUNC4(b);

    if ((ctx == NULL) || (next == NULL))
        return 0;

    ret = FUNC5(next, out, outl);
    if (FUNC3(b)) {
        if (ret > 0) {
            if (FUNC6(ctx, (unsigned char *)out,
                                 (unsigned int)ret) <= 0)
                return -1;
        }
    }
    FUNC0(b);
    FUNC1(b);
    return ret;
}