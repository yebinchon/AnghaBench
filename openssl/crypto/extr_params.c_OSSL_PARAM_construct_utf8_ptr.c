
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_PARAM_UTF8_PTR ;
 int ossl_param_construct (char const*,int ,char**,size_t) ;

OSSL_PARAM OSSL_PARAM_construct_utf8_ptr(const char *key, char **buf,
                                         size_t bsize)
{
    return ossl_param_construct(key, OSSL_PARAM_UTF8_PTR, buf, bsize);
}
