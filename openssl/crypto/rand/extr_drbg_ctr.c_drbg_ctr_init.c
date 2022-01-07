
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t keylen; int * cipher; int * ctx_df; int * ctx; } ;
struct TYPE_5__ {TYPE_2__ ctr; } ;
struct TYPE_7__ {int type; size_t strength; size_t seedlen; int flags; size_t min_entropylen; int max_entropylen; int min_noncelen; int max_perslen; int max_adinlen; int max_request; void* max_noncelen; int * meth; int libctx; TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_CTR ;
typedef TYPE_3__ RAND_DRBG ;
typedef int EVP_CIPHER ;


 void* DRBG_MAX_LENGTH ;
 void* EVP_CIPHER_CTX_new () ;
 int * EVP_CIPHER_fetch (int ,char*,char*) ;
 int EVP_CIPHER_free (int *) ;
 int EVP_CipherInit_ex (int *,int *,int *,unsigned char const*,int *,int) ;



 int RAND_DRBG_FLAG_CTR_NO_DF ;
 int RAND_F_DRBG_CTR_INIT ;
 int RAND_R_DERIVATION_FUNCTION_MANDATORY_FOR_FIPS ;
 int RANDerr (int ,int ) ;
 int drbg_ctr_meth ;

int drbg_ctr_init(RAND_DRBG *drbg)
{
    RAND_DRBG_CTR *ctr = &drbg->data.ctr;
    size_t keylen;
    EVP_CIPHER *cipher = ((void*)0);

    switch (drbg->type) {
    default:

        return 0;
    case 130:
        keylen = 16;
        cipher = EVP_CIPHER_fetch(drbg->libctx, "AES-128-ECB", "");
        break;
    case 129:
        keylen = 24;
        cipher = EVP_CIPHER_fetch(drbg->libctx, "AES-192-ECB", "");
        break;
    case 128:
        keylen = 32;
        cipher = EVP_CIPHER_fetch(drbg->libctx, "AES-256-ECB", "");
        break;
    }
    if (cipher == ((void*)0))
        return 0;

    EVP_CIPHER_free(ctr->cipher);
    ctr->cipher = cipher;

    drbg->meth = &drbg_ctr_meth;

    ctr->keylen = keylen;
    if (ctr->ctx == ((void*)0))
        ctr->ctx = EVP_CIPHER_CTX_new();
    if (ctr->ctx == ((void*)0))
        return 0;
    drbg->strength = keylen * 8;
    drbg->seedlen = keylen + 16;

    if ((drbg->flags & RAND_DRBG_FLAG_CTR_NO_DF) == 0) {

        static const unsigned char df_key[32] = {
            0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
            0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
            0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
            0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f
        };

        if (ctr->ctx_df == ((void*)0))
            ctr->ctx_df = EVP_CIPHER_CTX_new();
        if (ctr->ctx_df == ((void*)0))
            return 0;

        if (!EVP_CipherInit_ex(ctr->ctx_df, ctr->cipher, ((void*)0), df_key, ((void*)0), 1))
            return 0;

        drbg->min_entropylen = ctr->keylen;
        drbg->max_entropylen = DRBG_MAX_LENGTH;
        drbg->min_noncelen = drbg->min_entropylen / 2;
        drbg->max_noncelen = DRBG_MAX_LENGTH;
        drbg->max_perslen = DRBG_MAX_LENGTH;
        drbg->max_adinlen = DRBG_MAX_LENGTH;
    } else {





        drbg->min_entropylen = drbg->seedlen;
        drbg->max_entropylen = drbg->seedlen;

        drbg->min_noncelen = 0;
        drbg->max_noncelen = 0;
        drbg->max_perslen = drbg->seedlen;
        drbg->max_adinlen = drbg->seedlen;

    }

    drbg->max_request = 1 << 16;

    return 1;
}
