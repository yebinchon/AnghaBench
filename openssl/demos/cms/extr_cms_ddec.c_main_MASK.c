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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL, *tbio = NULL, *dcont = NULL;
    X509 *rcert = NULL;
    EVP_PKEY *rkey = NULL;
    CMS_ContentInfo *cms = NULL;
    int ret = 1;

    FUNC8();
    FUNC5();

    /* Read in recipient certificate and private key */
    tbio = FUNC1("signer.pem", "r");

    if (!tbio)
        goto err;

    rcert = FUNC11(tbio, NULL, 0, NULL);

    FUNC2(tbio);

    rkey = FUNC10(tbio, NULL, 0, NULL);

    if (!rcert || !rkey)
        goto err;

    /* Open PEM file containing enveloped data */

    in = FUNC1("smencr.pem", "r");

    if (!in)
        goto err;

    /* Parse PEM content */
    cms = FUNC9(in, NULL, 0, NULL);

    if (!cms)
        goto err;

    /* Open file containing detached content */
    dcont = FUNC1("smencr.out", "rb");

    if (!in)
        goto err;

    out = FUNC1("encrout.txt", "w");
    if (!out)
        goto err;

    /* Decrypt S/MIME message */
    if (!FUNC4(cms, rkey, rcert, dcont, out, 0))
        goto err;

    ret = 0;

 err:

    if (ret) {
        FUNC13(stderr, "Error Decrypting Data\n");
        FUNC6(stderr);
    }

    FUNC3(cms);
    FUNC12(rcert);
    FUNC7(rkey);
    FUNC0(in);
    FUNC0(out);
    FUNC0(tbio);
    FUNC0(dcont);
    return ret;
}