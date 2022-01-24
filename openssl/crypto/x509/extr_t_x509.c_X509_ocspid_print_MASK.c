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
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC10(BIO *bp, X509 *x)
{
    unsigned char *der = NULL;
    unsigned char *dertmp;
    int derlen;
    int i;
    unsigned char SHA1md[SHA_DIGEST_LENGTH];
    ASN1_BIT_STRING *keybstr;
    X509_NAME *subj;

    /*
     * display the hash of the subject as it would appear in OCSP requests
     */
    if (FUNC2(bp, "        Subject OCSP hash: ") <= 0)
        goto err;
    subj = FUNC8(x);
    derlen = FUNC9(subj, NULL);
    if ((der = dertmp = FUNC6(derlen)) == NULL)
        goto err;
    FUNC9(subj, &dertmp);

    if (!FUNC3(der, derlen, SHA1md, NULL, FUNC4(), NULL))
        goto err;
    for (i = 0; i < SHA_DIGEST_LENGTH; i++) {
        if (FUNC2(bp, "%02X", SHA1md[i]) <= 0)
            goto err;
    }
    FUNC5(der);
    der = NULL;

    /*
     * display the hash of the public key as it would appear in OCSP requests
     */
    if (FUNC2(bp, "\n        Public key OCSP hash: ") <= 0)
        goto err;

    keybstr = FUNC7(x);

    if (keybstr == NULL)
        goto err;

    if (!FUNC3(FUNC0(keybstr),
                    FUNC1(keybstr), SHA1md, NULL, FUNC4(),
                    NULL))
        goto err;
    for (i = 0; i < SHA_DIGEST_LENGTH; i++) {
        if (FUNC2(bp, "%02X", SHA1md[i]) <= 0)
            goto err;
    }
    FUNC2(bp, "\n");

    return 1;
 err:
    FUNC5(der);
    return 0;
}