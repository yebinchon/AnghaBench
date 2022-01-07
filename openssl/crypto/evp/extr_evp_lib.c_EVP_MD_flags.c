
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long flags; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_MD ;


 int OSSL_CIPHER_PARAM_FLAGS ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_ulong (int ,unsigned long*) ;
 int evp_do_md_getparams (TYPE_1__ const*,int *) ;

unsigned long EVP_MD_flags(const EVP_MD *md)
{
    int ok;
    unsigned long v = md->flags;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = OSSL_PARAM_construct_ulong(OSSL_CIPHER_PARAM_FLAGS, &v);
    ok = evp_do_md_getparams(md, params);

    return ok != 0 ? v : 0;
}
