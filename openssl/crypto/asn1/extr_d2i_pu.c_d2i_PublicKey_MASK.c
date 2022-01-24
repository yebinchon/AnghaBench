#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ec; int /*<<< orphan*/  dsa; int /*<<< orphan*/ * rsa; } ;
struct TYPE_10__ {TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_D2I_PUBLICKEY ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
#define  EVP_PKEY_DSA 130 
#define  EVP_PKEY_EC 129 
#define  EVP_PKEY_RSA 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const**,long) ; 

EVP_PKEY *FUNC8(int type, EVP_PKEY **a, const unsigned char **pp,
                        long length)
{
    EVP_PKEY *ret;

    if ((a == NULL) || (*a == NULL)) {
        if ((ret = FUNC3()) == NULL) {
            FUNC0(ASN1_F_D2I_PUBLICKEY, ERR_R_EVP_LIB);
            return NULL;
        }
    } else
        ret = *a;

    if (type != FUNC2(ret) && !FUNC4(ret, type)) {
        FUNC0(ASN1_F_D2I_PUBLICKEY, ERR_R_EVP_LIB);
        goto err;
    }

    switch (FUNC2(ret)) {
#ifndef OPENSSL_NO_RSA
    case EVP_PKEY_RSA:
        if ((ret->pkey.rsa = FUNC6(NULL, pp, length)) == NULL) {
            FUNC0(ASN1_F_D2I_PUBLICKEY, ERR_R_ASN1_LIB);
            goto err;
        }
        break;
#endif
#ifndef OPENSSL_NO_DSA
    case EVP_PKEY_DSA:
        /* TMP UGLY CAST */
        if (!FUNC5(&ret->pkey.dsa, pp, length)) {
            FUNC0(ASN1_F_D2I_PUBLICKEY, ERR_R_ASN1_LIB);
            goto err;
        }
        break;
#endif
#ifndef OPENSSL_NO_EC
    case EVP_PKEY_EC:
        if (!FUNC7(&ret->pkey.ec, pp, length)) {
            FUNC0(ASN1_F_D2I_PUBLICKEY, ERR_R_ASN1_LIB);
            goto err;
        }
        break;
#endif
    default:
        FUNC0(ASN1_F_D2I_PUBLICKEY, ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE);
        goto err;
    }
    if (a != NULL)
        (*a) = ret;
    return ret;
 err:
    if (a == NULL || *a != ret)
        FUNC1(ret);
    return NULL;
}