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
typedef  char BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cert ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  test_encrypt_decrypt ; 
 char* FUNC8 (int) ; 

int FUNC9(void)
{
    char *certin = NULL, *privkeyin = NULL;
    BIO *certbio = NULL, *privkeybio = NULL;

    if (!FUNC5(certin = FUNC8(0))
            || !FUNC5(privkeyin = FUNC8(1)))
        return 0;

    certbio = FUNC2(certin, "r");
    if (!FUNC5(certbio))
        return 0;
    if (!FUNC6(FUNC4(certbio, &cert, NULL, NULL))) {
        FUNC1(certbio);
        return 0;
    }
    FUNC1(certbio);

    privkeybio = FUNC2(privkeyin, "r");
    if (!FUNC5(privkeybio)) {
        FUNC7(cert);
        cert = NULL;
        return 0;
    }
    if (!FUNC6(FUNC3(privkeybio, &privkey, NULL, NULL))) {
        FUNC1(privkeybio);
        FUNC7(cert);
        cert = NULL;
        return 0;
    }
    FUNC1(privkeybio);

    FUNC0(test_encrypt_decrypt);

    return 1;
}