
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int (* pkey_security_bits ) (TYPE_2__ const*) ;} ;
typedef TYPE_2__ EVP_PKEY ;


 int stub1 (TYPE_2__ const*) ;

int EVP_PKEY_security_bits(const EVP_PKEY *pkey)
{
    if (pkey == ((void*)0))
        return 0;
    if (pkey->ameth == ((void*)0) || pkey->ameth->pkey_security_bits == ((void*)0))
        return -2;
    return pkey->ameth->pkey_security_bits(pkey);
}
