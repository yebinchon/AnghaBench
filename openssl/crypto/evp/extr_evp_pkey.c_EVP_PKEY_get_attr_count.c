
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attributes; } ;
typedef TYPE_1__ EVP_PKEY ;


 int X509at_get_attr_count (int ) ;

int EVP_PKEY_get_attr_count(const EVP_PKEY *key)
{
    return X509at_get_attr_count(key->attributes);
}
