#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_6__* parameter; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_3__ X509_ALGOR ;
struct TYPE_10__ {TYPE_1__* sequence; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_9__ {unsigned char* data; int length; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  CMS_RecipientInfo ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char**,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EC_F_ECDH_CMS_SET_SHARED_INFO ; 
 int /*<<< orphan*/  EC_R_KDF_PARAMETER_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EVP_CIPH_WRAP_MODE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 scalar_t__ V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(EVP_PKEY_CTX *pctx, CMS_RecipientInfo *ri)
{
    int rv = 0;

    X509_ALGOR *alg, *kekalg = NULL;
    ASN1_OCTET_STRING *ukm;
    const unsigned char *p;
    unsigned char *der = NULL;
    int plen, keylen;
    const EVP_CIPHER *kekcipher;
    EVP_CIPHER_CTX *kekctx;

    if (!FUNC0(ri, &alg, &ukm))
        return 0;

    if (!FUNC15(pctx, FUNC11(alg->algorithm))) {
        FUNC3(EC_F_ECDH_CMS_SET_SHARED_INFO, EC_R_KDF_PARAMETER_ERROR);
        return 0;
    }

    if (alg->parameter->type != V_ASN1_SEQUENCE)
        return 0;

    p = alg->parameter->value.sequence->data;
    plen = alg->parameter->value.sequence->length;
    kekalg = FUNC14(NULL, &p, plen);
    if (!kekalg)
        goto err;
    kekctx = FUNC1(ri);
    if (!kekctx)
        goto err;
    kekcipher = FUNC10(kekalg->algorithm);
    if (!kekcipher || FUNC6(kekcipher) != EVP_CIPH_WRAP_MODE)
        goto err;
    if (!FUNC7(kekctx, kekcipher, NULL, NULL, NULL))
        goto err;
    if (FUNC5(kekctx, kekalg->parameter) <= 0)
        goto err;

    keylen = FUNC4(kekctx);
    if (FUNC9(pctx, keylen) <= 0)
        goto err;

    plen = FUNC2(&der, kekalg, ukm, keylen);

    if (!plen)
        goto err;

    if (FUNC8(pctx, der, plen) <= 0)
        goto err;
    der = NULL;

    rv = 1;
 err:
    FUNC13(kekalg);
    FUNC12(der);
    return rv;
}