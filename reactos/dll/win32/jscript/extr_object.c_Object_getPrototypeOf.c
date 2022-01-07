
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
struct TYPE_3__ {scalar_t__ prototype; } ;
typedef TYPE_1__ jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int debugstr_jsval (int ) ;
 int get_object (int ) ;
 int is_object_instance (int ) ;
 int jsdisp_addref (scalar_t__) ;
 int jsval_null () ;
 int jsval_obj (int ) ;
 TYPE_1__* to_jsdisp (int ) ;

__attribute__((used)) static HRESULT Object_getPrototypeOf(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                                     unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *obj;

    if(!argc || !is_object_instance(argv[0])) {
        FIXME("invalid arguments\n");
        return E_NOTIMPL;
    }

    TRACE("(%s)\n", debugstr_jsval(argv[1]));

    obj = to_jsdisp(get_object(argv[0]));
    if(!obj) {
        FIXME("Non-JS object\n");
        return E_NOTIMPL;
    }

    if(r)
        *r = obj->prototype
            ? jsval_obj(jsdisp_addref(obj->prototype))
            : jsval_null();
    return S_OK;
}
