
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA_METHOD ;


 int const* default_RSA_meth ;

void RSA_set_default_method(const RSA_METHOD *meth)
{
    default_RSA_meth = meth;
}
