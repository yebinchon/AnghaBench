#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* parameter; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {unsigned char* key; size_t keylen; scalar_t__ debug; int /*<<< orphan*/ * cipher; TYPE_1__* contentEncryptionAlgorithm; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  TYPE_2__ CMS_EncryptedContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO ; 
 int /*<<< orphan*/  CMS_R_CIPHER_INITIALISATION_ERROR ; 
 int /*<<< orphan*/  CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR ; 
 int /*<<< orphan*/  CMS_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  CMS_R_UNKNOWN_CIPHER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,unsigned char*,int) ; 
 int EVP_MAX_IV_LENGTH ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,size_t) ; 
 unsigned char* FUNC19 (size_t) ; 
 scalar_t__ FUNC20 (unsigned char*,int) ; 
 scalar_t__ V_ASN1_UNDEF ; 

BIO *FUNC21(CMS_EncryptedContentInfo *ec)
{
    BIO *b;
    EVP_CIPHER_CTX *ctx;
    const EVP_CIPHER *ciph;
    X509_ALGOR *calg = ec->contentEncryptionAlgorithm;
    unsigned char iv[EVP_MAX_IV_LENGTH], *piv = NULL;
    unsigned char *tkey = NULL;
    size_t tkeylen = 0;

    int ok = 0;

    int enc, keep_key = 0;

    enc = ec->cipher ? 1 : 0;

    b = FUNC5(FUNC2());
    if (b == NULL) {
        FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    FUNC4(b, &ctx);

    if (enc) {
        ciph = ec->cipher;
        /*
         * If not keeping key set cipher to NULL so subsequent calls decrypt.
         */
        if (ec->key)
            ec->cipher = NULL;
    } else {
        ciph = FUNC16(calg->algorithm);

        if (!ciph) {
            FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, CMS_R_UNKNOWN_CIPHER);
            goto err;
        }
    }

    if (FUNC15(ctx, ciph, NULL, NULL, NULL, enc) <= 0) {
        FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
               CMS_R_CIPHER_INITIALISATION_ERROR);
        goto err;
    }

    if (enc) {
        int ivlen;
        calg->algorithm = FUNC17(FUNC12(ctx));
        /* Generate a random IV if we need one */
        ivlen = FUNC8(ctx);
        if (ivlen > 0) {
            if (FUNC20(iv, ivlen) <= 0)
                goto err;
            piv = iv;
        }
    } else if (FUNC13(ctx, calg->parameter) <= 0) {
        FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
               CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR);
        goto err;
    }
    tkeylen = FUNC9(ctx);
    /* Generate random session key */
    if (!enc || !ec->key) {
        tkey = FUNC19(tkeylen);
        if (tkey == NULL) {
            FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (FUNC10(ctx, tkey) <= 0)
            goto err;
    }

    if (!ec->key) {
        ec->key = tkey;
        ec->keylen = tkeylen;
        tkey = NULL;
        if (enc)
            keep_key = 1;
        else
            FUNC7();

    }

    if (ec->keylen != tkeylen) {
        /* If necessary set key length */
        if (FUNC11(ctx, ec->keylen) <= 0) {
            /*
             * Only reveal failure if debugging so we don't leak information
             * which may be useful in MMA.
             */
            if (enc || ec->debug) {
                FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
                       CMS_R_INVALID_KEY_LENGTH);
                goto err;
            } else {
                /* Use random key */
                FUNC18(ec->key, ec->keylen);
                ec->key = tkey;
                ec->keylen = tkeylen;
                tkey = NULL;
                FUNC7();
            }
        }
    }

    if (FUNC15(ctx, NULL, NULL, ec->key, piv, enc) <= 0) {
        FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
               CMS_R_CIPHER_INITIALISATION_ERROR);
        goto err;
    }
    if (enc) {
        calg->parameter = FUNC1();
        if (calg->parameter == NULL) {
            FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (FUNC14(ctx, calg->parameter) <= 0) {
            FUNC6(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
                   CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR);
            goto err;
        }
        /* If parameter type not set omit parameter */
        if (calg->parameter->type == V_ASN1_UNDEF) {
            FUNC0(calg->parameter);
            calg->parameter = NULL;
        }
    }
    ok = 1;

 err:
    if (!keep_key || !ok) {
        FUNC18(ec->key, ec->keylen);
        ec->key = NULL;
    }
    FUNC18(tkey, tkeylen);
    if (ok)
        return b;
    FUNC3(b);
    return NULL;
}