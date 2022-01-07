
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


 int E_INVALIDARG ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 int create_dispex (int *,int *,int *,int **) ;
 int debugstr_jsval (int ) ;
 scalar_t__ get_object (int ) ;
 int is_null (int ) ;
 scalar_t__ is_object_instance (int ) ;
 int is_undefined (int ) ;
 int jsdisp_define_properties (int *,int *,int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 int jsval_undefined () ;
 int * to_jsdisp (scalar_t__) ;

__attribute__((used)) static HRESULT Object_create(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                             unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *proto = ((void*)0), *obj;
    HRESULT hres;

    if(!argc || (!is_object_instance(argv[0]) && !is_null(argv[0]))) {
        FIXME("Invalid arg\n");
        return E_INVALIDARG;
    }

    TRACE("(%s)\n", debugstr_jsval(argv[0]));

    if(argc && is_object_instance(argv[0])) {
        if(get_object(argv[0]))
            proto = to_jsdisp(get_object(argv[0]));
        if(!proto) {
            FIXME("Non-JS prototype\n");
            return E_NOTIMPL;
        }
    }else if(!is_null(argv[0])) {
        FIXME("Invalid arg %s\n", debugstr_jsval(argc ? argv[0] : jsval_undefined()));
        return E_INVALIDARG;
    }

    hres = create_dispex(ctx, ((void*)0), proto, &obj);
    if(FAILED(hres))
        return hres;

    if(argc >= 2 && !is_undefined(argv[1]))
        hres = jsdisp_define_properties(ctx, obj, argv[1]);

    if(SUCCEEDED(hres) && r)
        *r = jsval_obj(obj);
    else
        jsdisp_release(obj);
    return hres;
}
