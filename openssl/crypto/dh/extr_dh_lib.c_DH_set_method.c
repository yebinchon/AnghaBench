
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__ const* meth; int * engine; } ;
struct TYPE_7__ {int (* init ) (TYPE_2__*) ;int (* finish ) (TYPE_2__*) ;} ;
typedef TYPE_1__ const DH_METHOD ;
typedef TYPE_2__ DH ;


 int ENGINE_finish (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

int DH_set_method(DH *dh, const DH_METHOD *meth)
{




    const DH_METHOD *mtmp;
    mtmp = dh->meth;
    if (mtmp->finish)
        mtmp->finish(dh);

    ENGINE_finish(dh->engine);
    dh->engine = ((void*)0);

    dh->meth = meth;
    if (meth->init)
        meth->init(dh);
    return 1;
}
