
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DSA ;


 int domparams_to_params (int *,int *) ;

__attribute__((used)) static int dsa_exportdomparams(void *domparams, OSSL_PARAM params[])
{
    DSA *dsa = domparams;

    return dsa != ((void*)0) && !domparams_to_params(dsa, params);
}
