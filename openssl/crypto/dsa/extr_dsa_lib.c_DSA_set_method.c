
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__ const* meth; int * engine; } ;
struct TYPE_7__ {int (* init ) (TYPE_2__*) ;int (* finish ) (TYPE_2__*) ;} ;
typedef TYPE_1__ const DSA_METHOD ;
typedef TYPE_2__ DSA ;


 int ENGINE_finish (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

int DSA_set_method(DSA *dsa, const DSA_METHOD *meth)
{




    const DSA_METHOD *mtmp;
    mtmp = dsa->meth;
    if (mtmp->finish)
        mtmp->finish(dsa);

    ENGINE_finish(dsa->engine);
    dsa->engine = ((void*)0);

    dsa->meth = meth;
    if (meth->init)
        meth->init(dsa);
    return 1;
}
