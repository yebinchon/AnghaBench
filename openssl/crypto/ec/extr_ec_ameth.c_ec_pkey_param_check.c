
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * group; } ;
struct TYPE_5__ {TYPE_3__* ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ EC_KEY ;


 int EC_F_EC_PKEY_PARAM_CHECK ;
 int EC_GROUP_check (int *,int *) ;
 int EC_R_MISSING_PARAMETERS ;
 int ECerr (int ,int ) ;

__attribute__((used)) static int ec_pkey_param_check(const EVP_PKEY *pkey)
{
    EC_KEY *eckey = pkey->pkey.ec;


    if (eckey->group == ((void*)0)) {
        ECerr(EC_F_EC_PKEY_PARAM_CHECK, EC_R_MISSING_PARAMETERS);
        return 0;
    }

    return EC_GROUP_check(eckey->group, ((void*)0));
}
