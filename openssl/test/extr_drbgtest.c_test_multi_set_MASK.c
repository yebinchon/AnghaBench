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
typedef  int /*<<< orphan*/  RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/  NID_aes_192_ctr ; 
 int /*<<< orphan*/  NID_sha1 ; 
 int /*<<< orphan*/  NID_sha256 ; 
 int /*<<< orphan*/  RAND_DRBG_FLAG_HMAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void)
{
    int rv = 0;
    RAND_DRBG *drbg = NULL;

    /* init drbg with default CTR initializer */
    if (!FUNC5(drbg = FUNC2(0, 0, NULL))
        || !FUNC6(FUNC7(drbg)))
        goto err;
    /* change it to use hmac */
    if (!FUNC6(FUNC3(drbg, NID_sha1, RAND_DRBG_FLAG_HMAC)))
        goto err;
    /* use same type */
    if (!FUNC6(FUNC3(drbg, NID_sha1, RAND_DRBG_FLAG_HMAC)))
        goto err;
    /* change it to use hash */
    if (!FUNC6(FUNC3(drbg, NID_sha256, 0)))
        goto err;
    /* use same type */
    if (!FUNC6(FUNC3(drbg, NID_sha256, 0)))
        goto err;
    /* change it to use ctr */
    if (!FUNC6(FUNC3(drbg, NID_aes_192_ctr, 0)))
        goto err;
    /* use same type */
    if (!FUNC6(FUNC3(drbg, NID_aes_192_ctr, 0)))
        goto err;
    if (!FUNC4(FUNC1(drbg, NULL, 0), 0))
        goto err;

    rv = 1;
err:
    FUNC8(drbg);
    FUNC0(drbg);
    return rv;
}