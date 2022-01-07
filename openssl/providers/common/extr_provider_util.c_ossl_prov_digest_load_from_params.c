
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ data_type; int data; } ;
struct TYPE_8__ {int * md; int * alloc_md; int engine; } ;
typedef TYPE_1__ PROV_DIGEST ;
typedef TYPE_2__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;


 int * EVP_MD_fetch (int *,int ,char const*) ;
 int EVP_MD_free (int *) ;
 int * EVP_get_digestbyname (int ) ;
 int OSSL_ALG_PARAM_DIGEST ;
 scalar_t__ OSSL_PARAM_UTF8_STRING ;
 TYPE_2__* OSSL_PARAM_locate_const (TYPE_2__ const*,int ) ;
 int load_common (TYPE_2__ const*,char const**,int *) ;

int ossl_prov_digest_load_from_params(PROV_DIGEST *pd,
                                      const OSSL_PARAM params[],
                                      OPENSSL_CTX *ctx)
{
    const OSSL_PARAM *p;
    const char *propquery;

    if (!load_common(params, &propquery, &pd->engine))
        return 0;


    p = OSSL_PARAM_locate_const(params, OSSL_ALG_PARAM_DIGEST);
    if (p == ((void*)0))
        return 1;
    if (p->data_type != OSSL_PARAM_UTF8_STRING)
        return 0;

    EVP_MD_free(pd->alloc_md);
    pd->md = pd->alloc_md = EVP_MD_fetch(ctx, p->data, propquery);


    if (pd->md == ((void*)0))
        pd->md = EVP_get_digestbyname(p->data);

    return pd->md != ((void*)0);
}
