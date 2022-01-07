
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef void DSA ;


 int DSA_free (void*) ;
 void* DSA_new () ;
 int params_to_key (void*,int const*) ;

__attribute__((used)) static void *dsa_importkey(void *provctx, const OSSL_PARAM params[])
{
    DSA *dsa;

    if ((dsa = DSA_new()) == ((void*)0)
        || !params_to_key(dsa, params)) {
        DSA_free(dsa);
        dsa = ((void*)0);
    }
    return dsa;
}
