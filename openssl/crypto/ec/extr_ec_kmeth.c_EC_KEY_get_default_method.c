
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY_METHOD ;


 int const* default_ec_key_meth ;

const EC_KEY_METHOD *EC_KEY_get_default_method(void)
{
    return default_ec_key_meth;
}
