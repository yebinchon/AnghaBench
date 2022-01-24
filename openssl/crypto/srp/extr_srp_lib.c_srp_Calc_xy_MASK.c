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
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (int) ; 
 int SHA_DIGEST_LENGTH ; 

__attribute__((used)) static BIGNUM *FUNC8(const BIGNUM *x, const BIGNUM *y, const BIGNUM *N)
{
    unsigned char digest[SHA_DIGEST_LENGTH];
    unsigned char *tmp = NULL;
    int numN = FUNC2(N);
    BIGNUM *res = NULL;

    if (x != N && FUNC3(x, N) >= 0)
        return NULL;
    if (y != N && FUNC3(y, N) >= 0)
        return NULL;
    if ((tmp = FUNC7(numN * 2)) == NULL)
        goto err;
    if (FUNC1(x, tmp, numN) < 0
        || FUNC1(y, tmp + numN, numN) < 0
        || !FUNC4(tmp, numN * 2, digest, NULL, FUNC5(), NULL))
        goto err;
    res = FUNC0(digest, sizeof(digest), NULL);
 err:
    FUNC6(tmp);
    return res;
}