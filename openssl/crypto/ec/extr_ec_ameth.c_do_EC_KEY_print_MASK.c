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
typedef  scalar_t__ ec_print_t ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  EC_F_DO_EC_KEY_PRINT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EC_KEY_PRINT_PARAM ; 
 scalar_t__ EC_KEY_PRINT_PRIVATE ; 
 scalar_t__ EC_KEY_PRINT_PUBLIC ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (int /*<<< orphan*/  const*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 

__attribute__((used)) static int FUNC14(BIO *bp, const EC_KEY *x, int off, ec_print_t ktype)
{
    const char *ecstr;
    unsigned char *priv = NULL, *pub = NULL;
    size_t privlen = 0, publen = 0;
    int ret = 0;
    const EC_GROUP *group;

    if (x == NULL || (group = FUNC5(x)) == NULL) {
        FUNC11(EC_F_DO_EC_KEY_PRINT, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    if (ktype != EC_KEY_PRINT_PARAM && FUNC7(x) != NULL) {
        publen = FUNC9(x, FUNC8(x), &pub, NULL);
        if (publen == 0)
            goto err;
    }

    if (ktype == EC_KEY_PRINT_PRIVATE && FUNC6(x) != NULL) {
        privlen = FUNC10(x, &priv);
        if (privlen == 0)
            goto err;
    }

    if (ktype == EC_KEY_PRINT_PRIVATE)
        ecstr = "Private-Key";
    else if (ktype == EC_KEY_PRINT_PUBLIC)
        ecstr = "Public-Key";
    else
        ecstr = "ECDSA-Parameters";

    if (!FUNC1(bp, off, 128))
        goto err;
    if (FUNC2(bp, "%s: (%d bit)\n", ecstr,
                   FUNC4(group)) <= 0)
        goto err;

    if (privlen != 0) {
        if (FUNC2(bp, "%*spriv:\n", off, "") <= 0)
            goto err;
        if (FUNC0(bp, priv, privlen, off + 4) == 0)
            goto err;
    }

    if (publen != 0) {
        if (FUNC2(bp, "%*spub:\n", off, "") <= 0)
            goto err;
        if (FUNC0(bp, pub, publen, off + 4) == 0)
            goto err;
    }

    if (!FUNC3(bp, group, off))
        goto err;
    ret = 1;
 err:
    if (!ret)
        FUNC11(EC_F_DO_EC_KEY_PRINT, ERR_R_EC_LIB);
    FUNC12(priv, privlen);
    FUNC13(pub);
    return ret;
}