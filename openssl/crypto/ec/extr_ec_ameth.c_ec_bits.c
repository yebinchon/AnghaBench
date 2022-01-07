
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int EC_GROUP_order_bits (int ) ;
 int EC_KEY_get0_group (int ) ;

__attribute__((used)) static int ec_bits(const EVP_PKEY *pkey)
{
    return EC_GROUP_order_bits(EC_KEY_get0_group(pkey->pkey.ec));
}
