
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int DSA ;


 int key_to_params (int *,int *) ;

__attribute__((used)) static int dsa_exportkey(void *key, OSSL_PARAM params[])
{
    DSA *dsa = key;

    return dsa != ((void*)0) && !key_to_params(dsa, params);
}
