
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_3__ {int atend; } ;
typedef int HRESULT ;
typedef TYPE_1__ EnumeratorInstance ;


 int JS_E_ENUMERATOR_EXPECTED ;
 int S_OK ;
 int TRACE (char*,int ) ;
 TYPE_1__* enumerator_this (int *) ;
 int jsval_bool (int ) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Enumerator_atEnd(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    EnumeratorInstance *This;

    if (!(This = enumerator_this(jsthis)))
        return throw_type_error(ctx, JS_E_ENUMERATOR_EXPECTED, ((void*)0));

    TRACE("%d\n", This->atend);

    if (r)
        *r = jsval_bool(This->atend);
    return S_OK;
}
