
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int IDispatch ;
typedef int HRESULT ;




 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;
 int IDispatch_Release (int *) ;
 int S_OK ;
 int TRACE (char*) ;
 int create_object (int *,int *,int **) ;
 int get_object (int ) ;
 int is_null (int ) ;
 int is_object_instance (int ) ;
 int is_undefined (int ) ;
 int jsdisp_release (int *) ;
 int jsval_disp (int *) ;
 int jsval_obj (int *) ;
 int to_object (int *,int ,int **) ;

__attribute__((used)) static HRESULT ObjectConstr_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 128:
    case 129: {
        jsdisp_t *obj;

        if(argc) {
            if(!is_undefined(argv[0]) && !is_null(argv[0]) && (!is_object_instance(argv[0]) || get_object(argv[0]))) {
                IDispatch *disp;

                hres = to_object(ctx, argv[0], &disp);
                if(FAILED(hres))
                    return hres;

                if(r)
                    *r = jsval_disp(disp);
                else
                    IDispatch_Release(disp);
                return S_OK;
            }
        }

        hres = create_object(ctx, ((void*)0), &obj);
        if(FAILED(hres))
            return hres;

        if(r)
            *r = jsval_obj(obj);
        else
            jsdisp_release(obj);
        break;
    }

    default:
        FIXME("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
