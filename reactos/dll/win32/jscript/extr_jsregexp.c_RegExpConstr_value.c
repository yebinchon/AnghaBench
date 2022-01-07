
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;




 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,...) ;
 int JSCLASS_REGEXP ;
 int JS_E_REGEXP_SYNTAX ;
 int S_OK ;
 int TRACE (char*) ;
 int create_regexp_var (int *,int ,int *,int **) ;
 int get_object (int ) ;
 int * iface_to_jsdisp (int ) ;
 int is_class (int *,int ) ;
 int is_object_instance (int ) ;
 int is_undefined (int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 int throw_regexp_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT RegExpConstr_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    TRACE("\n");

    switch(flags) {
    case 128:
        if(argc) {
            if(is_object_instance(argv[0])) {
                jsdisp_t *jsdisp = iface_to_jsdisp(get_object(argv[0]));
                if(jsdisp) {
                    if(is_class(jsdisp, JSCLASS_REGEXP)) {
                        if(argc > 1 && !is_undefined(argv[1])) {
                            jsdisp_release(jsdisp);
                            return throw_regexp_error(ctx, JS_E_REGEXP_SYNTAX, ((void*)0));
                        }

                        if(r)
                            *r = jsval_obj(jsdisp);
                        else
                            jsdisp_release(jsdisp);
                        return S_OK;
                    }
                    jsdisp_release(jsdisp);
                }
            }
        }

    case 129: {
        jsdisp_t *ret;
        HRESULT hres;

        if(!argc) {
            FIXME("no args\n");
            return E_NOTIMPL;
        }

        hres = create_regexp_var(ctx, argv[0], argc > 1 ? argv+1 : ((void*)0), &ret);
        if(FAILED(hres))
            return hres;

        if(r)
            *r = jsval_obj(ret);
        else
            jsdisp_release(ret);
        return S_OK;
    }
    default:
        FIXME("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
