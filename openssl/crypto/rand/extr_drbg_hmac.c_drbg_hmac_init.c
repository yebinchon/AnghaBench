
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int blocklen; int * md; int * ctx; } ;
struct TYPE_5__ {TYPE_2__ hmac; } ;
struct TYPE_7__ {int strength; int seedlen; int min_entropylen; int min_noncelen; int max_request; void* max_adinlen; void* max_perslen; void* max_noncelen; void* max_entropylen; int * meth; int type; int libctx; TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HMAC ;
typedef TYPE_3__ RAND_DRBG ;
typedef int EVP_MD ;


 void* DRBG_MAX_LENGTH ;
 int EVP_MD_FLAG_XOF ;
 int * EVP_MD_fetch (int ,int ,char*) ;
 int EVP_MD_flags (int *) ;
 int EVP_MD_free (int *) ;
 int EVP_MD_size (int *) ;
 int * HMAC_CTX_new () ;
 int drbg_hmac_meth ;
 int ossl_prov_util_nid_to_name (int ) ;

int drbg_hmac_init(RAND_DRBG *drbg)
{
    EVP_MD *md = ((void*)0);
    RAND_DRBG_HMAC *hmac = &drbg->data.hmac;






    md = EVP_MD_fetch(drbg->libctx, ossl_prov_util_nid_to_name(drbg->type), "");
    if (md == ((void*)0))
        return 0;

    if ((EVP_MD_flags(md) & EVP_MD_FLAG_XOF) != 0)
        return 0;

    drbg->meth = &drbg_hmac_meth;

    if (hmac->ctx == ((void*)0)) {
        hmac->ctx = HMAC_CTX_new();
        if (hmac->ctx == ((void*)0)) {
            EVP_MD_free(md);
            return 0;
        }
    }


    EVP_MD_free(hmac->md);
    hmac->md = md;
    hmac->blocklen = EVP_MD_size(md);

    drbg->strength = 64 * (int)(hmac->blocklen >> 3);
    if (drbg->strength > 256)
        drbg->strength = 256;
    drbg->seedlen = hmac->blocklen;

    drbg->min_entropylen = drbg->strength / 8;
    drbg->max_entropylen = DRBG_MAX_LENGTH;

    drbg->min_noncelen = drbg->min_entropylen / 2;
    drbg->max_noncelen = DRBG_MAX_LENGTH;

    drbg->max_perslen = DRBG_MAX_LENGTH;
    drbg->max_adinlen = DRBG_MAX_LENGTH;


    drbg->max_request = 1 << 16;

    return 1;
}
