
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* group; } ;
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* keygen ) (TYPE_3__*) ;} ;
typedef TYPE_3__ EC_KEY ;


 int stub1 (TYPE_3__*) ;

int ossl_ec_key_gen(EC_KEY *eckey)
{
    return eckey->group->meth->keygen(eckey);
}
