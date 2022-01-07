
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int (* pkey_ctrl ) (TYPE_2__*,int,int,void*) ;} ;
typedef TYPE_2__ EVP_PKEY ;


 int stub1 (TYPE_2__*,int,int,void*) ;

__attribute__((used)) static int evp_pkey_asn1_ctrl(EVP_PKEY *pkey, int op, int arg1, void *arg2)
{
    if (pkey->ameth == ((void*)0) || pkey->ameth->pkey_ctrl == ((void*)0))
        return -2;
    return pkey->ameth->pkey_ctrl(pkey, op, arg1, arg2);
}
