
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DH ;


 int domparams_to_params (int *,int *) ;

__attribute__((used)) static int dh_exportdomparams(void *domparams, OSSL_PARAM params[])
{
    DH *dh = domparams;

    return dh != ((void*)0) && !domparams_to_params(dh, params);
}
