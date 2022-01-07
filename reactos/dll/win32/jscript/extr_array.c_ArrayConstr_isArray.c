
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


 int FALSE ;
 int JSCLASS_ARRAY ;
 int S_OK ;
 int TRACE (char*) ;
 int get_object (int ) ;
 int * iface_to_jsdisp (int ) ;
 scalar_t__ is_class (int *,int ) ;
 int is_object_instance (int ) ;
 int jsdisp_release (int *) ;
 int jsval_bool (int) ;

__attribute__((used)) static HRESULT ArrayConstr_isArray(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *obj;

    TRACE("\n");

    if(!argc || !is_object_instance(argv[0])) {
        if(r) *r = jsval_bool(FALSE);
        return S_OK;
    }

    obj = iface_to_jsdisp(get_object(argv[0]));
    if(r) *r = jsval_bool(obj && is_class(obj, JSCLASS_ARRAY));
    if(obj) jsdisp_release(obj);
    return S_OK;
}
