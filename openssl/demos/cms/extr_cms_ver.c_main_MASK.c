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
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL, *tbio = NULL, *cont = NULL;
    X509_STORE *st = NULL;
    X509 *cacert = NULL;
    CMS_ContentInfo *cms = NULL;

    int ret = 1;

    FUNC6();
    FUNC4();

    /* Set up trusted CA certificate store */

    st = FUNC10();

    /* Read in CA certificate */
    tbio = FUNC1("cacert.pem", "r");

    if (!tbio)
        goto err;

    cacert = FUNC7(tbio, NULL, 0, NULL);

    if (!cacert)
        goto err;

    if (!FUNC9(st, cacert))
        goto err;

    /* Open message being verified */

    in = FUNC1("smout.txt", "r");

    if (!in)
        goto err;

    /* parse message */
    cms = FUNC8(in, &cont);

    if (!cms)
        goto err;

    /* File to output verified content to */
    out = FUNC1("smver.txt", "w");
    if (!out)
        goto err;

    if (!FUNC3(cms, NULL, st, cont, out, 0)) {
        FUNC12(stderr, "Verification Failure\n");
        goto err;
    }

    FUNC12(stderr, "Verification Successful\n");

    ret = 0;

 err:

    if (ret) {
        FUNC12(stderr, "Error Verifying Data\n");
        FUNC5(stderr);
    }

    FUNC2(cms);
    FUNC11(cacert);
    FUNC0(in);
    FUNC0(out);
    FUNC0(tbio);
    return ret;
}