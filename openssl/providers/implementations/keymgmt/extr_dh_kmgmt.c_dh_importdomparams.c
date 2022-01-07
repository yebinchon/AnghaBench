
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef void DH ;


 int DH_free (void*) ;
 void* DH_new () ;
 int params_to_domparams (void*,int const*) ;

__attribute__((used)) static void *dh_importdomparams(void *provctx, const OSSL_PARAM params[])
{
    DH *dh;

    if ((dh = DH_new()) == ((void*)0)
        || !params_to_domparams(dh, params)) {
        DH_free(dh);
        dh = ((void*)0);
    }
    return dh;
}
