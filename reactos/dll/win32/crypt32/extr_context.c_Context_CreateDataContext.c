
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int context_vtbl_t ;
struct TYPE_11__ {int ref; TYPE_3__* store; int * linked; int const* vtbl; int properties; } ;
typedef TYPE_2__ context_t ;
struct TYPE_12__ {TYPE_1__* vtbl; } ;
typedef TYPE_3__ WINECRYPT_CERTSTORE ;
struct TYPE_10__ {int (* addref ) (TYPE_3__*) ;} ;


 int ContextPropertyList_Create () ;
 TYPE_2__* CryptMemAlloc (int) ;
 int CryptMemFree (TYPE_2__*) ;
 int TRACE (char*,TYPE_2__*) ;
 int stub1 (TYPE_3__*) ;

context_t *Context_CreateDataContext(size_t contextSize, const context_vtbl_t *vtbl, WINECRYPT_CERTSTORE *store)
{
    context_t *context;

    context = CryptMemAlloc(sizeof(context_t) + contextSize);
    if (!context)
        return ((void*)0);

    context->properties = ContextPropertyList_Create();
    if (!context->properties)
    {
        CryptMemFree(context);
        return ((void*)0);
    }

    context->vtbl = vtbl;
    context->ref = 1;
    context->linked = ((void*)0);

    store->vtbl->addref(store);
    context->store = store;

    TRACE("returning %p\n", context);
    return context;
}
