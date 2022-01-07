
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY_METHOD ;


 int const* default_ec_key_meth ;
 int openssl_ec_key_method ;

void EC_KEY_set_default_method(const EC_KEY_METHOD *meth)
{
    if (meth == ((void*)0))
        default_ec_key_meth = &openssl_ec_key_method;
    else
        default_ec_key_meth = meth;
}
