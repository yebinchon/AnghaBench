
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_PARAM_UNSIGNED_INTEGER ;
 int ossl_param_construct (char const*,int ,size_t*,int) ;

OSSL_PARAM OSSL_PARAM_construct_size_t(const char *key, size_t *buf)
{
    return ossl_param_construct(key, OSSL_PARAM_UNSIGNED_INTEGER, buf,
                                sizeof(size_t));
}
