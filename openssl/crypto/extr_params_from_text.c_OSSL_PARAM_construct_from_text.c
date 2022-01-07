
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int construct_from_text (int *,int const*,char const*,size_t,int,void*,size_t,int *) ;
 int prepare_from_text (int const*,char const*,char const*,size_t,int const**,int*,size_t*,int **) ;

int OSSL_PARAM_construct_from_text(OSSL_PARAM *to,
                                   const OSSL_PARAM *paramdefs,
                                   const char *key, const char *value,
                                   size_t value_n,
                                   void *buf, size_t *buf_n)
{
    const OSSL_PARAM *paramdef = ((void*)0);
    int ishex = 0;
    BIGNUM *tmpbn = ((void*)0);
    int ok = 0;

    if (to == ((void*)0) || paramdefs == ((void*)0))
        return 0;

    if (!prepare_from_text(paramdefs, key, value, value_n,
                           &paramdef, &ishex, buf_n, &tmpbn))
        return 0;





    if (buf == ((void*)0))
        return 1;

    ok = construct_from_text(to, paramdef, value, value_n, ishex,
                             buf, *buf_n, tmpbn);
    BN_free(tmpbn);
    return ok;
}
