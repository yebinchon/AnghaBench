#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ param_decode; scalar_t__ old_priv_decode; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ **,char const*,int) ; 
 char const* PEM_STRING_CMS ; 
 char const* PEM_STRING_DHPARAMS ; 
 char const* PEM_STRING_DHXPARAMS ; 
 char const* PEM_STRING_EVP_PKEY ; 
 char const* PEM_STRING_PARAMETERS ; 
 char const* PEM_STRING_PKCS7 ; 
 char const* PEM_STRING_PKCS7_SIGNED ; 
 char const* PEM_STRING_PKCS8 ; 
 char const* PEM_STRING_PKCS8INF ; 
 char const* PEM_STRING_X509 ; 
 char const* PEM_STRING_X509_OLD ; 
 char const* PEM_STRING_X509_REQ ; 
 char const* PEM_STRING_X509_REQ_OLD ; 
 char const* PEM_STRING_X509_TRUSTED ; 
 int FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4(const char *nm, const char *name)
{
    /* Normal matching nm and name */
    if (FUNC3(nm, name) == 0)
        return 1;

    /* Make PEM_STRING_EVP_PKEY match any private key */

    if (FUNC3(name, PEM_STRING_EVP_PKEY) == 0) {
        int slen;
        const EVP_PKEY_ASN1_METHOD *ameth;
        if (FUNC3(nm, PEM_STRING_PKCS8) == 0)
            return 1;
        if (FUNC3(nm, PEM_STRING_PKCS8INF) == 0)
            return 1;
        slen = FUNC2(nm, "PRIVATE KEY");
        if (slen > 0) {
            /*
             * NB: ENGINE implementations won't contain a deprecated old
             * private key decode function so don't look for them.
             */
            ameth = FUNC1(NULL, nm, slen);
            if (ameth && ameth->old_priv_decode)
                return 1;
        }
        return 0;
    }

    if (FUNC3(name, PEM_STRING_PARAMETERS) == 0) {
        int slen;
        const EVP_PKEY_ASN1_METHOD *ameth;
        slen = FUNC2(nm, "PARAMETERS");
        if (slen > 0) {
            ENGINE *e;
            ameth = FUNC1(&e, nm, slen);
            if (ameth) {
                int r;
                if (ameth->param_decode)
                    r = 1;
                else
                    r = 0;
#ifndef OPENSSL_NO_ENGINE
                FUNC0(e);
#endif
                return r;
            }
        }
        return 0;
    }
    /* If reading DH parameters handle X9.42 DH format too */
    if (FUNC3(nm, PEM_STRING_DHXPARAMS) == 0
        && FUNC3(name, PEM_STRING_DHPARAMS) == 0)
        return 1;

    /* Permit older strings */

    if (FUNC3(nm, PEM_STRING_X509_OLD) == 0
        && FUNC3(name, PEM_STRING_X509) == 0)
        return 1;

    if (FUNC3(nm, PEM_STRING_X509_REQ_OLD) == 0
        && FUNC3(name, PEM_STRING_X509_REQ) == 0)
        return 1;

    /* Allow normal certs to be read as trusted certs */
    if (FUNC3(nm, PEM_STRING_X509) == 0
        && FUNC3(name, PEM_STRING_X509_TRUSTED) == 0)
        return 1;

    if (FUNC3(nm, PEM_STRING_X509_OLD) == 0
        && FUNC3(name, PEM_STRING_X509_TRUSTED) == 0)
        return 1;

    /* Some CAs use PKCS#7 with CERTIFICATE headers */
    if (FUNC3(nm, PEM_STRING_X509) == 0
        && FUNC3(name, PEM_STRING_PKCS7) == 0)
        return 1;

    if (FUNC3(nm, PEM_STRING_PKCS7_SIGNED) == 0
        && FUNC3(name, PEM_STRING_PKCS7) == 0)
        return 1;

#ifndef OPENSSL_NO_CMS
    if (FUNC3(nm, PEM_STRING_X509) == 0
        && FUNC3(name, PEM_STRING_CMS) == 0)
        return 1;
    /* Allow CMS to be read from PKCS#7 headers */
    if (FUNC3(nm, PEM_STRING_PKCS7) == 0
        && FUNC3(name, PEM_STRING_CMS) == 0)
        return 1;
#endif

    return 0;
}