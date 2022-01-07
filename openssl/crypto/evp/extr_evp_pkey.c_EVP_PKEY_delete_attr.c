
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ATTRIBUTE ;
struct TYPE_3__ {int attributes; } ;
typedef TYPE_1__ EVP_PKEY ;


 int * X509at_delete_attr (int ,int) ;

X509_ATTRIBUTE *EVP_PKEY_delete_attr(EVP_PKEY *key, int loc)
{
    return X509at_delete_attr(key->attributes, loc);
}
