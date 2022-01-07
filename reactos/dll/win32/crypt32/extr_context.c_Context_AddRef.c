
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* store; int ref; } ;
typedef TYPE_2__ context_t ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {int (* addref ) (TYPE_3__*) ;} ;
typedef int LONG ;


 int InterlockedIncrement (int *) ;
 int TRACE (char*,TYPE_2__*,int ) ;
 int stub1 (TYPE_3__*) ;

void Context_AddRef(context_t *context)
{
    LONG ref = InterlockedIncrement(&context->ref);

    TRACE("(%p) ref=%d\n", context, context->ref);

    if(ref == 1) {

        context->store->vtbl->addref(context->store);
    }
}
