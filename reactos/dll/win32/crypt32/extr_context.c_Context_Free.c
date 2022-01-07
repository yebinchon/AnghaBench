
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int linked; TYPE_1__* vtbl; int properties; int ref; } ;
typedef TYPE_2__ context_t ;
struct TYPE_7__ {int (* free ) (TYPE_2__*) ;} ;


 int ContextPropertyList_Free (int ) ;
 int Context_Release (int ) ;
 int CryptMemFree (TYPE_2__*) ;
 int TRACE (char*,TYPE_2__*) ;
 int assert (int) ;
 int stub1 (TYPE_2__*) ;

void Context_Free(context_t *context)
{
    TRACE("(%p)\n", context);

    assert(!context->ref);

    if (!context->linked) {
        ContextPropertyList_Free(context->properties);
        context->vtbl->free(context);
    }else {
        Context_Release(context->linked);
    }

    CryptMemFree(context);
}
