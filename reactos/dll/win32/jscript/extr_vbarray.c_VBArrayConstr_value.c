
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_3__ {int dispex; int safearray; } ;
typedef TYPE_1__ VBArrayInstance ;
typedef int HRESULT ;




 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;
 int JS_E_VBARRAY_EXPECTED ;
 int S_OK ;
 int SafeArrayCopy (int ,int *) ;
 int TRACE (char*) ;
 int VT_ARRAY ;
 int VT_VARIANT ;
 int V_ARRAY (int ) ;
 int V_VT (int ) ;
 int alloc_vbarray (int *,int *,TYPE_1__**) ;
 int get_variant (int ) ;
 int is_variant (int ) ;
 int jsdisp_release (int *) ;
 int jsval_copy (int ,int *) ;
 int jsval_obj (int *) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT VBArrayConstr_value(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 128:
        if(argc<1 || !is_variant(argv[0]) || V_VT(get_variant(argv[0])) != (VT_ARRAY|VT_VARIANT))
            return throw_type_error(ctx, JS_E_VBARRAY_EXPECTED, ((void*)0));

        return jsval_copy(argv[0], r);

    case 129:
        if(argc<1 || !is_variant(argv[0]) || V_VT(get_variant(argv[0])) != (VT_ARRAY|VT_VARIANT))
            return throw_type_error(ctx, JS_E_VBARRAY_EXPECTED, ((void*)0));

        hres = alloc_vbarray(ctx, ((void*)0), &vbarray);
        if(FAILED(hres))
            return hres;

        hres = SafeArrayCopy(V_ARRAY(get_variant(argv[0])), &vbarray->safearray);
        if(FAILED(hres)) {
            jsdisp_release(&vbarray->dispex);
            return hres;
        }

        *r = jsval_obj(&vbarray->dispex);
        break;

    default:
        FIXME("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
