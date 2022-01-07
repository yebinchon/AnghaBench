
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int blocklen; int * md; int * ctx; } ;
struct TYPE_5__ {TYPE_2__ hash; } ;
struct TYPE_7__ {int strength; int min_entropylen; int min_noncelen; int max_request; void* max_adinlen; void* max_perslen; void* max_noncelen; void* max_entropylen; int seedlen; int * meth; int type; int libctx; TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HASH ;
typedef TYPE_3__ RAND_DRBG ;
typedef int EVP_MD ;


 void* DRBG_MAX_LENGTH ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_FLAG_XOF ;
 int * EVP_MD_fetch (int ,int ,char*) ;
 int EVP_MD_flags (int *) ;
 int EVP_MD_free (int *) ;
 int EVP_MD_size (int *) ;
 int HASH_PRNG_MAX_SEEDLEN ;
 int HASH_PRNG_SMALL_SEEDLEN ;
 int MAX_BLOCKLEN_USING_SMALL_SEEDLEN ;
 int drbg_hash_meth ;
 int ossl_prov_util_nid_to_name (int ) ;

int drbg_hash_init(RAND_DRBG *drbg)
{
    EVP_MD *md;
    RAND_DRBG_HASH *hash = &drbg->data.hash;






    md = EVP_MD_fetch(drbg->libctx, ossl_prov_util_nid_to_name(drbg->type), "");
    if (md == ((void*)0))
        return 0;

    if ((EVP_MD_flags(md) & EVP_MD_FLAG_XOF) != 0)
        return 0;

    drbg->meth = &drbg_hash_meth;

    if (hash->ctx == ((void*)0)) {
        hash->ctx = EVP_MD_CTX_new();
        if (hash->ctx == ((void*)0)) {
            EVP_MD_free(md);
            return 0;
        }
    }

    EVP_MD_free(hash->md);
    hash->md = md;


    hash->blocklen = EVP_MD_size(md);

    drbg->strength = 64 * (hash->blocklen >> 3);
    if (drbg->strength > 256)
        drbg->strength = 256;
    if (hash->blocklen > MAX_BLOCKLEN_USING_SMALL_SEEDLEN)
        drbg->seedlen = HASH_PRNG_MAX_SEEDLEN;
    else
        drbg->seedlen = HASH_PRNG_SMALL_SEEDLEN;

    drbg->min_entropylen = drbg->strength / 8;
    drbg->max_entropylen = DRBG_MAX_LENGTH;

    drbg->min_noncelen = drbg->min_entropylen / 2;
    drbg->max_noncelen = DRBG_MAX_LENGTH;

    drbg->max_perslen = DRBG_MAX_LENGTH;
    drbg->max_adinlen = DRBG_MAX_LENGTH;


    drbg->max_request = 1 << 16;

    return 1;
}
