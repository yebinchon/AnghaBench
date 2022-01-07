
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_3__ {int item; } ;
typedef int HRESULT ;
typedef TYPE_1__ EnumeratorInstance ;


 int JS_E_ENUMERATOR_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_1__* enumerator_this (int *) ;
 int jsval_copy (int ,int *) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Enumerator_item(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    EnumeratorInstance *This;

    TRACE("\n");

    if (!(This = enumerator_this(jsthis)))
        return throw_type_error(ctx, JS_E_ENUMERATOR_EXPECTED, ((void*)0));

    return r ? jsval_copy(This->item, r) : S_OK;
}
