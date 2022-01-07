
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ EVP_PKEY ;



int EVP_PKEY_id(const EVP_PKEY *pkey)
{
    return pkey->type;
}
