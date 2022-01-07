
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; int * next; int * frame; int * obj; int * jsobj; } ;
typedef TYPE_1__ scope_chain_t ;
typedef int jsdisp_t ;
typedef int IDispatch ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IDispatch_AddRef (int *) ;
 int S_OK ;
 TYPE_1__* heap_alloc (int) ;
 int * scope_addref (TYPE_1__*) ;

__attribute__((used)) static HRESULT scope_push(scope_chain_t *scope, jsdisp_t *jsobj, IDispatch *obj, scope_chain_t **ret)
{
    scope_chain_t *new_scope;

    new_scope = heap_alloc(sizeof(scope_chain_t));
    if(!new_scope)
        return E_OUTOFMEMORY;

    new_scope->ref = 1;

    IDispatch_AddRef(obj);
    new_scope->jsobj = jsobj;
    new_scope->obj = obj;
    new_scope->frame = ((void*)0);
    new_scope->next = scope ? scope_addref(scope) : ((void*)0);

    *ret = new_scope;
    return S_OK;
}
