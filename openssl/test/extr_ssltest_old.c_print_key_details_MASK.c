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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 
#define  EVP_PKEY_DH 130 
#define  EVP_PKEY_DSA 129 
 int EVP_PKEY_EC ; 
#define  EVP_PKEY_RSA 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(BIO *out, EVP_PKEY *key)
{
    int keyid = FUNC7(key);
#ifndef OPENSSL_NO_EC
    if (keyid == EVP_PKEY_EC) {
        EC_KEY *ec = FUNC6(key);
        int nid;
        const char *cname;
        nid = FUNC1(FUNC3(ec));
        FUNC2(ec);
        cname = FUNC4(nid);
        if (!cname)
            cname = FUNC8(nid);
        FUNC0(out, "%d bits EC (%s)", FUNC5(key), cname);
    } else
#endif
    {
        const char *algname;
        switch (keyid) {
        case EVP_PKEY_RSA:
            algname = "RSA";
            break;
        case EVP_PKEY_DSA:
            algname = "DSA";
            break;
        case EVP_PKEY_DH:
            algname = "DH";
            break;
        default:
            algname = FUNC8(keyid);
            break;
        }
        FUNC0(out, "%d bits %s", FUNC5(key), algname);
    }
}