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
 int PKCS7_PARTIAL ; 
 int PKCS7_STREAM ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC15(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL, *tbio = NULL;
    X509 *scert = NULL, *scert2 = NULL;
    EVP_PKEY *skey = NULL, *skey2 = NULL;
    PKCS7 *p7 = NULL;
    int ret = 1;

    FUNC6();
    FUNC3();

    tbio = FUNC1("signer.pem", "r");

    if (!tbio)
        goto err;

    scert = FUNC8(tbio, NULL, 0, NULL);

    FUNC2(tbio);

    skey = FUNC7(tbio, NULL, 0, NULL);

    FUNC0(tbio);

    tbio = FUNC1("signer2.pem", "r");

    if (!tbio)
        goto err;

    scert2 = FUNC8(tbio, NULL, 0, NULL);

    FUNC2(tbio);

    skey2 = FUNC7(tbio, NULL, 0, NULL);

    if (!scert2 || !skey2)
        goto err;

    in = FUNC1("sign.txt", "r");

    if (!in)
        goto err;

    p7 = FUNC10(NULL, NULL, NULL, in, PKCS7_STREAM | PKCS7_PARTIAL);

    if (!p7)
        goto err;

    /* Add each signer in turn */

    if (!FUNC11(p7, scert, skey, NULL, 0))
        goto err;

    if (!FUNC11(p7, scert2, skey2, NULL, 0))
        goto err;

    out = FUNC1("smout.txt", "w");
    if (!out)
        goto err;

    /* NB: content included and finalized by SMIME_write_PKCS7 */

    if (!FUNC12(out, p7, in, PKCS7_STREAM))
        goto err;

    ret = 0;

 err:
    if (ret) {
        FUNC14(stderr, "Error Signing Data\n");
        FUNC4(stderr);
    }
    FUNC9(p7);
    FUNC13(scert);
    FUNC5(skey);
    FUNC13(scert2);
    FUNC5(skey2);
    FUNC0(in);
    FUNC0(out);
    FUNC0(tbio);
    return ret;
}