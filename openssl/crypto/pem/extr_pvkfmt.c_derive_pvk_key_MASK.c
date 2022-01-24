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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(unsigned char *key,
                          const unsigned char *salt, unsigned int saltlen,
                          const unsigned char *pass, int passlen)
{
    EVP_MD_CTX *mctx = FUNC4();
    int rv = 1;
    if (mctx == NULL
        || !FUNC1(mctx, FUNC5(), NULL)
        || !FUNC2(mctx, salt, saltlen)
        || !FUNC2(mctx, pass, passlen)
        || !FUNC0(mctx, key, NULL))
        rv = 0;

    FUNC3(mctx);
    return rv;
}