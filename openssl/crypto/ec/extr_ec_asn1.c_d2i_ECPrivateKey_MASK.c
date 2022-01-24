#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_1__* meth; } ;
struct TYPE_18__ {int /*<<< orphan*/  enc_flag; TYPE_9__* group; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/  version; } ;
struct TYPE_17__ {int /*<<< orphan*/ * publicKey; int /*<<< orphan*/ * privateKey; int /*<<< orphan*/  version; scalar_t__ parameters; } ;
struct TYPE_16__ {scalar_t__ (* keygenpub ) (TYPE_3__*) ;} ;
typedef  TYPE_2__ EC_PRIVATEKEY ;
typedef  TYPE_3__ EC_KEY ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_D2I_ECPRIVATEKEY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 TYPE_9__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,unsigned char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*,unsigned char*,int) ; 
 int /*<<< orphan*/  EC_PKEY_NO_PUBKEY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  EC_R_MISSING_PRIVATE_KEY ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 

EC_KEY *FUNC14(EC_KEY **a, const unsigned char **in, long len)
{
    EC_KEY *ret = NULL;
    EC_PRIVATEKEY *priv_key = NULL;
    const unsigned char *p = *in;

    if ((priv_key = FUNC12(NULL, &p, len)) == NULL) {
        FUNC11(EC_F_D2I_ECPRIVATEKEY, ERR_R_EC_LIB);
        return NULL;
    }

    if (a == NULL || *a == NULL) {
        if ((ret = FUNC5()) == NULL) {
            FUNC11(EC_F_D2I_ECPRIVATEKEY, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    } else
        ret = *a;

    if (priv_key->parameters) {
        FUNC2(ret->group);
        ret->group = FUNC3(priv_key->parameters);
    }

    if (ret->group == NULL) {
        FUNC11(EC_F_D2I_ECPRIVATEKEY, ERR_R_EC_LIB);
        goto err;
    }

    ret->version = priv_key->version;

    if (priv_key->privateKey) {
        ASN1_OCTET_STRING *pkey = priv_key->privateKey;
        if (FUNC7(ret, FUNC0(pkey),
                            FUNC1(pkey)) == 0)
            goto err;
    } else {
        FUNC11(EC_F_D2I_ECPRIVATEKEY, EC_R_MISSING_PRIVATE_KEY);
        goto err;
    }

    FUNC8(ret->pub_key);
    ret->pub_key = FUNC9(ret->group);
    if (ret->pub_key == NULL) {
        FUNC11(EC_F_D2I_ECPRIVATEKEY, ERR_R_EC_LIB);
        goto err;
    }

    if (priv_key->publicKey) {
        const unsigned char *pub_oct;
        int pub_oct_len;

        pub_oct = FUNC0(priv_key->publicKey);
        pub_oct_len = FUNC1(priv_key->publicKey);
        if (!FUNC6(ret, pub_oct, pub_oct_len, NULL)) {
            FUNC11(EC_F_D2I_ECPRIVATEKEY, ERR_R_EC_LIB);
            goto err;
        }
    } else {
        if (ret->group->meth->keygenpub == NULL
            || ret->group->meth->keygenpub(ret) == 0)
                goto err;
        /* Remember the original private-key-only encoding. */
        ret->enc_flag |= EC_PKEY_NO_PUBKEY;
    }

    if (a)
        *a = ret;
    FUNC10(priv_key);
    *in = p;
    return ret;

 err:
    if (a == NULL || *a != ret)
        FUNC4(ret);
    FUNC10(priv_key);
    return NULL;
}