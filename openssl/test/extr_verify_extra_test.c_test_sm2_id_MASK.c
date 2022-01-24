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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bad_f ; 
 scalar_t__ FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(void)
{
    /* we only need an X509 structure, no matter if it's a real SM2 cert */
    X509 *x = NULL;
    BIO *bio = NULL;
    int ret = 0;
    ASN1_OCTET_STRING *v = NULL, *v2 = NULL;
    char *sm2id = "this is an ID";

    bio = FUNC5(bad_f, "r");
    if (bio == NULL)
        goto err;

    x = FUNC6(bio, NULL, 0, NULL);
    if (x == NULL)
        goto err;

    v = FUNC2();
    if (v == NULL)
        goto err;

    if (!FUNC3(v, (unsigned char *)sm2id, (int)FUNC12(sm2id))) {
        FUNC1(v);
        goto err;
    }

    FUNC11(x, v);

    v2 = FUNC10(x);
    if (!FUNC8(v2)
            || !FUNC7(FUNC0(v, v2), 0))
        goto err;

    ret = 1;
 err:
    FUNC9(x);
    FUNC4(bio);
    return ret;
}