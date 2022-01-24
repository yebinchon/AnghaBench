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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int) ; 
#define  EVP_PKEY_DH 130 
#define  EVP_PKEY_EC 129 
#define  EVP_PKEY_RSA 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 char const* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int FUNC12(BIO *out, SSL *s)
{
    EVP_PKEY *key;

    if (!FUNC11(s, &key))
        return 1;
    FUNC1(out, "Server Temp Key: ");
    switch (FUNC9(key)) {
    case EVP_PKEY_RSA:
        FUNC0(out, "RSA, %d bits\n", FUNC6(key));
        break;

    case EVP_PKEY_DH:
        FUNC0(out, "DH, %d bits\n", FUNC6(key));
        break;
#ifndef OPENSSL_NO_EC
    case EVP_PKEY_EC:
        {
            EC_KEY *ec = FUNC8(key);
            int nid;
            const char *cname;
            nid = FUNC2(FUNC4(ec));
            FUNC3(ec);
            cname = FUNC5(nid);
            if (cname == NULL)
                cname = FUNC10(nid);
            FUNC0(out, "ECDH, %s, %d bits\n", cname, FUNC6(key));
        }
    break;
#endif
    default:
        FUNC0(out, "%s, %d bits\n", FUNC10(FUNC9(key)),
                   FUNC6(key));
    }
    FUNC7(key);
    return 1;
}