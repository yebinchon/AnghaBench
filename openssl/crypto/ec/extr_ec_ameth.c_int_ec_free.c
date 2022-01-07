
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int EC_KEY_free (int ) ;

__attribute__((used)) static void int_ec_free(EVP_PKEY *pkey)
{
    EC_KEY_free(pkey->pkey.ec);
}
