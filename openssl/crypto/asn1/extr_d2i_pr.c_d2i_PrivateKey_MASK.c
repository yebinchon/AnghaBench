#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* ameth; int /*<<< orphan*/ * engine; } ;
struct TYPE_10__ {scalar_t__ priv_decode; int /*<<< orphan*/  (* old_priv_decode ) (TYPE_2__*,unsigned char const**,long) ;} ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_D2I_PRIVATEKEY ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,unsigned char const**,long) ; 

EVP_PKEY *FUNC9(int type, EVP_PKEY **a, const unsigned char **pp,
                         long length)
{
    EVP_PKEY *ret;
    const unsigned char *p = *pp;

    if ((a == NULL) || (*a == NULL)) {
        if ((ret = FUNC4()) == NULL) {
            FUNC0(ASN1_F_D2I_PRIVATEKEY, ERR_R_EVP_LIB);
            return NULL;
        }
    } else {
        ret = *a;
#ifndef OPENSSL_NO_ENGINE
        FUNC1(ret->engine);
        ret->engine = NULL;
#endif
    }

    if (!FUNC5(ret, type)) {
        FUNC0(ASN1_F_D2I_PRIVATEKEY, ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE);
        goto err;
    }

    if (!ret->ameth->old_priv_decode ||
        !ret->ameth->old_priv_decode(ret, &p, length)) {
        if (ret->ameth->priv_decode) {
            EVP_PKEY *tmp;
            PKCS8_PRIV_KEY_INFO *p8 = NULL;
            p8 = FUNC7(NULL, &p, length);
            if (p8 == NULL)
                goto err;
            tmp = FUNC2(p8);
            FUNC6(p8);
            if (tmp == NULL)
                goto err;
            FUNC3(ret);
            ret = tmp;
        } else {
            FUNC0(ASN1_F_D2I_PRIVATEKEY, ERR_R_ASN1_LIB);
            goto err;
        }
    }
    *pp = p;
    if (a != NULL)
        (*a) = ret;
    return ret;
 err:
    if (a == NULL || *a != ret)
        FUNC3(ret);
    return NULL;
}