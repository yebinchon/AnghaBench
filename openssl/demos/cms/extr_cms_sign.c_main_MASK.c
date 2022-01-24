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
 int CMS_DETACHED ; 
 int CMS_STREAM ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL, *tbio = NULL;
    X509 *scert = NULL;
    EVP_PKEY *skey = NULL;
    CMS_ContentInfo *cms = NULL;
    int ret = 1;

    /*
     * For simple S/MIME signing use CMS_DETACHED. On OpenSSL 1.0.0 only: for
     * streaming detached set CMS_DETACHED|CMS_STREAM for streaming
     * non-detached set CMS_STREAM
     */
    int flags = CMS_DETACHED | CMS_STREAM;

    FUNC8();
    FUNC5();

    /* Read in signer certificate and private key */
    tbio = FUNC1("signer.pem", "r");

    if (!tbio)
        goto err;

    scert = FUNC10(tbio, NULL, 0, NULL);

    FUNC2(tbio);

    skey = FUNC9(tbio, NULL, 0, NULL);

    if (!scert || !skey)
        goto err;

    /* Open content being signed */

    in = FUNC1("sign.txt", "r");

    if (!in)
        goto err;

    /* Sign content */
    cms = FUNC4(scert, skey, NULL, in, flags);

    if (!cms)
        goto err;

    out = FUNC1("smout.txt", "w");
    if (!out)
        goto err;

    if (!(flags & CMS_STREAM))
        FUNC2(in);

    /* Write out S/MIME message */
    if (!FUNC11(out, cms, in, flags))
        goto err;

    ret = 0;

 err:

    if (ret) {
        FUNC13(stderr, "Error Signing Data\n");
        FUNC6(stderr);
    }

    FUNC3(cms);
    FUNC12(scert);
    FUNC7(skey);
    FUNC0(in);
    FUNC0(out);
    FUNC0(tbio);
    return ret;
}