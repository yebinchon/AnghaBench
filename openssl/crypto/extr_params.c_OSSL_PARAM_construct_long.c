
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_PARAM_INTEGER ;
 int ossl_param_construct (char const*,int ,long*,int) ;

OSSL_PARAM OSSL_PARAM_construct_long(const char *key, long int *buf)
{
    return ossl_param_construct(key, OSSL_PARAM_INTEGER, buf, sizeof(long int));
}
