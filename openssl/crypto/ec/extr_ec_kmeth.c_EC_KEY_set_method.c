
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void (* finish ) (TYPE_1__*) ;int (* init ) (TYPE_1__*) ;} ;
struct TYPE_7__ {TYPE_2__ const* meth; int * engine; } ;
typedef TYPE_2__ EC_KEY_METHOD ;
typedef TYPE_1__ EC_KEY ;


 int ENGINE_finish (int *) ;
 int stub1 (TYPE_1__*) ;

int EC_KEY_set_method(EC_KEY *key, const EC_KEY_METHOD *meth)
{
    void (*finish)(EC_KEY *key) = key->meth->finish;

    if (finish != ((void*)0))
        finish(key);


    ENGINE_finish(key->engine);
    key->engine = ((void*)0);


    key->meth = meth;
    if (meth->init != ((void*)0))
        return meth->init(key);
    return 1;
}
