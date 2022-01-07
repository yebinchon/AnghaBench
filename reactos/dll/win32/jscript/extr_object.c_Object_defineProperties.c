
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
 int FIXME (char*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int *) ;
 int get_object (int ) ;
 int is_object_instance (int ) ;
 int jsdisp_addref (int *) ;
 int jsdisp_define_properties (int *,int *,int ) ;
 int jsval_obj (int ) ;
 int jsval_undefined () ;
 int * to_jsdisp (int ) ;

__attribute__((used)) static HRESULT Object_defineProperties(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                                     unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *obj;
    HRESULT hres;

    if(argc < 1 || !is_object_instance(argv[0]) || !get_object(argv[0]) || !(obj = to_jsdisp(get_object(argv[0])))) {
        FIXME("not an object\n");
        return E_NOTIMPL;
    }

    TRACE("%p\n", obj);

    hres = jsdisp_define_properties(ctx, obj, argc >= 2 ? argv[1] : jsval_undefined());
    if(SUCCEEDED(hres) && r)
        *r = jsval_obj(jsdisp_addref(obj));
    return hres;
}
