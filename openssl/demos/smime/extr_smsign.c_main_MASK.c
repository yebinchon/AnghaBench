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
 int PKCS7_DETACHED ; 
 int PKCS7_STREAM ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL, *tbio = NULL;
    X509 *scert = NULL;
    EVP_PKEY *skey = NULL;
    PKCS7 *p7 = NULL;
    int ret = 1;

    /*
     * For simple S/MIME signing use PKCS7_DETACHED. On OpenSSL 0.9.9 only:
     * for streaming detached set PKCS7_DETACHED|PKCS7_STREAM for streaming
     * non-detached set PKCS7_STREAM
     */
    int flags = PKCS7_DETACHED | PKCS7_STREAM;

    FUNC6();
    FUNC3();

    /* Read in signer certificate and private key */
    tbio = FUNC1("signer.pem", "r");

    if (!tbio)
        goto err;

    scert = FUNC8(tbio, NULL, 0, NULL);

    FUNC2(tbio);

    skey = FUNC7(tbio, NULL, 0, NULL);

    if (!scert || !skey)
        goto err;

    /* Open content being signed */

    in = FUNC1("sign.txt", "r");

    if (!in)
        goto err;

    /* Sign content */
    p7 = FUNC10(scert, skey, NULL, in, flags);

    if (!p7)
        goto err;

    out = FUNC1("smout.txt", "w");
    if (!out)
        goto err;

    if (!(flags & PKCS7_STREAM))
        FUNC2(in);

    /* Write out S/MIME message */
    if (!FUNC11(out, p7, in, flags))
        goto err;

    ret = 0;

 err:
    if (ret) {
        FUNC13(stderr, "Error Signing Data\n");
        FUNC4(stderr);
    }
    FUNC9(p7);
    FUNC12(scert);
    FUNC5(skey);
    FUNC0(in);
    FUNC0(out);
    FUNC0(tbio);

    return ret;

}