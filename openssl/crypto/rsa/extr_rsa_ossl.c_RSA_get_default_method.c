
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA_METHOD ;


 int const* default_RSA_meth ;

const RSA_METHOD *RSA_get_default_method(void)
{
    return default_RSA_meth;
}
