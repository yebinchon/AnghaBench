
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* store; int ref; } ;
typedef TYPE_2__ context_t ;
struct TYPE_11__ {TYPE_1__* vtbl; } ;
typedef TYPE_3__ WINECRYPT_CERTSTORE ;
struct TYPE_9__ {int (* release ) (TYPE_3__*,int ) ;int (* releaseContext ) (TYPE_3__*,TYPE_2__*) ;} ;
typedef scalar_t__ LONG ;


 scalar_t__ InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_2__*,scalar_t__) ;
 int assert (int) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;
 int stub2 (TYPE_3__*,int ) ;

void Context_Release(context_t *context)
{
    LONG ref = InterlockedDecrement(&context->ref);

    TRACE("(%p) ref=%d\n", context, ref);
    assert(ref >= 0);

    if (!ref) {
        WINECRYPT_CERTSTORE *store = context->store;



        store->vtbl->releaseContext(store, context);
        store->vtbl->release(store, 0);
    }
}
