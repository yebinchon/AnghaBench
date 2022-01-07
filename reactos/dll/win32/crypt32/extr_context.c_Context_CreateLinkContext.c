
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int ref; TYPE_3__* store; int properties; struct TYPE_12__* linked; int vtbl; } ;
typedef TYPE_2__ context_t ;
struct TYPE_13__ {TYPE_1__* vtbl; } ;
typedef TYPE_3__ WINECRYPT_CERTSTORE ;
struct TYPE_11__ {int (* addref ) (TYPE_3__*) ;} ;


 int Context_AddRef (TYPE_2__*) ;
 TYPE_2__* CryptMemAlloc (int) ;
 int TRACE (char*,...) ;
 int context_ptr (TYPE_2__*) ;
 int memcpy (int ,int ,unsigned int) ;
 int stub1 (TYPE_3__*) ;

context_t *Context_CreateLinkContext(unsigned int contextSize, context_t *linked, WINECRYPT_CERTSTORE *store)
{
    context_t *context;

    TRACE("(%d, %p)\n", contextSize, linked);

    context = CryptMemAlloc(sizeof(context_t) + contextSize);
    if (!context)
        return ((void*)0);

    memcpy(context_ptr(context), context_ptr(linked), contextSize);
    context->vtbl = linked->vtbl;
    context->ref = 1;
    context->linked = linked;
    context->properties = linked->properties;
    Context_AddRef(linked);

    store->vtbl->addref(store);
    context->store = store;

    TRACE("returning %p\n", context);
    return context;
}
