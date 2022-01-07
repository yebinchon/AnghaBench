
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int OSSL_PARAM ;


 int OSSL_PARAM_INTEGER ;
 int ossl_param_construct (char const*,int ,int *,int) ;

OSSL_PARAM OSSL_PARAM_construct_int64(const char *key, int64_t *buf)
{
    return ossl_param_construct(key, OSSL_PARAM_INTEGER, buf, sizeof(int64_t));
}
