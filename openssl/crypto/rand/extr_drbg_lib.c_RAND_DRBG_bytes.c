
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; size_t max_request; int * adin_pool; int max_adinlen; } ;
typedef TYPE_1__ RAND_DRBG ;


 size_t RAND_DRBG_generate (TYPE_1__*,unsigned char*,size_t,int ,unsigned char*,size_t) ;
 int rand_drbg_cleanup_additional_data (int *,unsigned char*) ;
 size_t rand_drbg_get_additional_data (int *,unsigned char**) ;
 int * rand_pool_new (int ,int ,int ,int ) ;

int RAND_DRBG_bytes(RAND_DRBG *drbg, unsigned char *out, size_t outlen)
{
    unsigned char *additional = ((void*)0);
    size_t additional_len;
    size_t chunk;
    size_t ret = 0;

    if (drbg->adin_pool == ((void*)0)) {
        if (drbg->type == 0)
            goto err;
        drbg->adin_pool = rand_pool_new(0, 0, 0, drbg->max_adinlen);
        if (drbg->adin_pool == ((void*)0))
            goto err;
    }

    additional_len = rand_drbg_get_additional_data(drbg->adin_pool,
                                                   &additional);

    for ( ; outlen > 0; outlen -= chunk, out += chunk) {
        chunk = outlen;
        if (chunk > drbg->max_request)
            chunk = drbg->max_request;
        ret = RAND_DRBG_generate(drbg, out, chunk, 0, additional, additional_len);
        if (!ret)
            goto err;
    }
    ret = 1;

 err:
    if (additional != ((void*)0))
        rand_drbg_cleanup_additional_data(drbg->adin_pool, additional);

    return ret;
}
