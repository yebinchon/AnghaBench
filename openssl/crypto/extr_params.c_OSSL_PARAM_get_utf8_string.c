
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_PARAM_UTF8_STRING ;
 int get_string_internal (int const*,void**,size_t,int *,int ) ;

int OSSL_PARAM_get_utf8_string(const OSSL_PARAM *p, char **val, size_t max_len)
{
    return get_string_internal(p, (void **)val, max_len, ((void*)0),
                               OSSL_PARAM_UTF8_STRING);
}
