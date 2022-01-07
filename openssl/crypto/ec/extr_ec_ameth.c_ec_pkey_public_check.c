
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_KEY ;


 int EC_KEY_check_key (int *) ;

__attribute__((used)) static int ec_pkey_public_check(const EVP_PKEY *pkey)
{
    EC_KEY *eckey = pkey->pkey.ec;
    return EC_KEY_check_key(eckey);
}
