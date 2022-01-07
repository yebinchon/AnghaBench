
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_4__ {int atend; scalar_t__ enumvar; } ;
typedef int HRESULT ;
typedef TYPE_1__ EnumeratorInstance ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IEnumVARIANT_Reset (scalar_t__) ;
 int JS_E_ENUMERATOR_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_1__* enumerator_this (int *) ;
 int enumvar_get_next_item (TYPE_1__*) ;
 int jsval_undefined () ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Enumerator_moveFirst(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    EnumeratorInstance *This;
    HRESULT hres = S_OK;

    TRACE("\n");

    if (!(This = enumerator_this(jsthis)))
        return throw_type_error(ctx, JS_E_ENUMERATOR_EXPECTED, ((void*)0));

    if (This->enumvar)
    {
        hres = IEnumVARIANT_Reset(This->enumvar);
        if (FAILED(hres))
            return hres;

        This->atend = FALSE;
        hres = enumvar_get_next_item(This);
        if(FAILED(hres))
            return hres;
    }

    if (r)
        *r = jsval_undefined();
    return S_OK;
}
