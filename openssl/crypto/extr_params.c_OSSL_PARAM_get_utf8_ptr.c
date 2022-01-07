
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_PARAM_UTF8_PTR ;
 int get_ptr_internal (int const*,void const**,int *,int ) ;

int OSSL_PARAM_get_utf8_ptr(const OSSL_PARAM *p, const char **val)
{
    return get_ptr_internal(p, (const void **)val, ((void*)0), OSSL_PARAM_UTF8_PTR);
}
