
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ dispex_prop_t ;
typedef int builtin_info_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ PROP_DELETED ;
 scalar_t__ SUCCEEDED (int ) ;
 int find_prop_name_prot (int *,int ,char const*,TYPE_1__**) ;
 int get_object (int ) ;
 int * iface_to_jsdisp (int ) ;
 int init_dispex (int *,int *,int const*,int *) ;
 scalar_t__ is_object_instance (int ) ;
 int jsdisp_release (int *) ;
 int jsval_release (int ) ;
 int prop_get (int *,TYPE_1__*,int *) ;
 int string_hash (char const*) ;

HRESULT init_dispex_from_constr(jsdisp_t *dispex, script_ctx_t *ctx, const builtin_info_t *builtin_info, jsdisp_t *constr)
{
    jsdisp_t *prot = ((void*)0);
    dispex_prop_t *prop;
    HRESULT hres;

    static const WCHAR prototypeW[] = {'p','r','o','t','o','t','y','p','e',0};

    hres = find_prop_name_prot(constr, string_hash(prototypeW), prototypeW, &prop);
    if(SUCCEEDED(hres) && prop && prop->type!=PROP_DELETED) {
        jsval_t val;

        hres = prop_get(constr, prop, &val);
        if(FAILED(hres)) {
            ERR("Could not get prototype\n");
            return hres;
        }

        if(is_object_instance(val))
            prot = iface_to_jsdisp(get_object(val));
        jsval_release(val);
    }

    hres = init_dispex(dispex, ctx, builtin_info, prot);

    if(prot)
        jsdisp_release(prot);
    return hres;
}
