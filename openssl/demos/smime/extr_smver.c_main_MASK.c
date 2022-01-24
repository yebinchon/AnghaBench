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
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
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
    PKCS7 *p7 = NULL;

    int ret = 1;

    FUNC4();
    FUNC2();

    /* Set up trusted CA certificate store */

    st = FUNC10();

    /* Read in signer certificate and private key */
    tbio = FUNC1("cacert.pem", "r");

    if (!tbio)
        goto err;

    cacert = FUNC5(tbio, NULL, 0, NULL);

    if (!cacert)
        goto err;

    if (!FUNC9(st, cacert))
        goto err;

    /* Open content being signed */

    in = FUNC1("smout.txt", "r");

    if (!in)
        goto err;

    /* Sign content */
    p7 = FUNC8(in, &cont);

    if (!p7)
        goto err;

    /* File to output verified content to */
    out = FUNC1("smver.txt", "w");
    if (!out)
        goto err;

    if (!FUNC7(p7, NULL, st, cont, out, 0)) {
        FUNC12(stderr, "Verification Failure\n");
        goto err;
    }

    FUNC12(stderr, "Verification Successful\n");

    ret = 0;

 err:
    if (ret) {
        FUNC12(stderr, "Error Verifying Data\n");
        FUNC3(stderr);
    }
    FUNC6(p7);
    FUNC11(cacert);
    FUNC0(in);
    FUNC0(out);
    FUNC0(tbio);
    return ret;
}