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
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL, *tbio = NULL;
    X509 *rcert = NULL;
    EVP_PKEY *rkey = NULL;
    PKCS7 *p7 = NULL;
    int ret = 1;

    FUNC6();
    FUNC3();

    /* Read in recipient certificate and private key */
    tbio = FUNC1("signer.pem", "r");

    if (!tbio)
        goto err;

    rcert = FUNC8(tbio, NULL, 0, NULL);

    FUNC2(tbio);

    rkey = FUNC7(tbio, NULL, 0, NULL);

    if (!rcert || !rkey)
        goto err;

    /* Open content being signed */

    in = FUNC1("smencr.txt", "r");

    if (!in)
        goto err;

    /* Sign content */
    p7 = FUNC11(in, NULL);

    if (!p7)
        goto err;

    out = FUNC1("encrout.txt", "w");
    if (!out)
        goto err;

    /* Decrypt S/MIME message */
    if (!FUNC9(p7, rkey, rcert, out, 0))
        goto err;

    ret = 0;

 err:
    if (ret) {
        FUNC13(stderr, "Error Signing Data\n");
        FUNC4(stderr);
    }
    FUNC10(p7);
    FUNC12(rcert);
    FUNC5(rkey);
    FUNC0(in);
    FUNC0(out);
    FUNC0(tbio);

    return ret;

}