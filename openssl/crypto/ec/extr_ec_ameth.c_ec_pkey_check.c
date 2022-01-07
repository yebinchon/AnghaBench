
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * priv_key; } ;
struct TYPE_6__ {TYPE_3__* ec; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ EC_KEY ;


 int EC_F_EC_PKEY_CHECK ;
 int EC_KEY_check_key (TYPE_3__*) ;
 int EC_R_MISSING_PRIVATE_KEY ;
 int ECerr (int ,int ) ;

__attribute__((used)) static int ec_pkey_check(const EVP_PKEY *pkey)
{
    EC_KEY *eckey = pkey->pkey.ec;


    if (eckey->priv_key == ((void*)0)) {
        ECerr(EC_F_EC_PKEY_CHECK, EC_R_MISSING_PRIVATE_KEY);
        return 0;
    }

    return EC_KEY_check_key(eckey);
}
