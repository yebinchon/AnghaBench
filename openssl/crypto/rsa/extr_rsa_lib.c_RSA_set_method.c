
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__ const* meth; int * engine; } ;
struct TYPE_7__ {int (* init ) (TYPE_2__*) ;int (* finish ) (TYPE_2__*) ;} ;
typedef TYPE_1__ const RSA_METHOD ;
typedef TYPE_2__ RSA ;


 int ENGINE_finish (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

int RSA_set_method(RSA *rsa, const RSA_METHOD *meth)
{




    const RSA_METHOD *mtmp;
    mtmp = rsa->meth;
    if (mtmp->finish)
        mtmp->finish(rsa);

    ENGINE_finish(rsa->engine);
    rsa->engine = ((void*)0);

    rsa->meth = meth;
    if (meth->init)
        meth->init(rsa);
    return 1;
}
