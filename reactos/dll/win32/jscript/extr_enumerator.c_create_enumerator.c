
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int VARIANT ;
struct TYPE_7__ {int member_3; int member_2; int * member_1; int * member_0; } ;
struct TYPE_6__ {int atend; int dispex; int * enumvar; } ;
typedef int IEnumVARIANT ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_1__ EnumeratorInstance ;
typedef TYPE_2__ DISPPARAMS ;


 int DISPATCH_METHOD ;
 int DISPID_NEWENUM ;
 int E_INVALIDARG ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IDispatch_Invoke (int *,int ,int *,int ,int ,TYPE_2__*,int *,int *,int *) ;
 int IEnumVARIANT_Release (int *) ;
 int IID_IEnumVARIANT ;
 int IID_NULL ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 int LOCALE_NEUTRAL ;
 int S_OK ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ VT_UNKNOWN ;
 int V_UNKNOWN (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int WARN (char*) ;
 int alloc_enumerator (int *,int *,TYPE_1__**) ;
 int enumvar_get_next_item (TYPE_1__*) ;
 int * get_object (int ) ;
 int is_object_instance (int ) ;
 int jsdisp_release (int *) ;

__attribute__((used)) static HRESULT create_enumerator(script_ctx_t *ctx, jsval_t *argv, jsdisp_t **ret)
{
    EnumeratorInstance *enumerator;
    HRESULT hres;
    IDispatch *obj;
    DISPPARAMS dispparams = {((void*)0), ((void*)0), 0, 0};
    IEnumVARIANT *enumvar = ((void*)0);

    if (argv)
    {
        VARIANT varresult;

        if (!is_object_instance(*argv))
        {
            FIXME("I don't know how to handle this type!\n");
            return E_NOTIMPL;
        }

        obj = get_object(*argv);


        VariantInit(&varresult);
        hres = IDispatch_Invoke(obj, DISPID_NEWENUM, &IID_NULL, LOCALE_NEUTRAL,
                DISPATCH_METHOD, &dispparams, &varresult, ((void*)0), ((void*)0));
        if (FAILED(hres))
        {
            WARN("Enumerator: no DISPID_NEWENUM.\n");
            return E_INVALIDARG;
        }

        if ((V_VT(&varresult) == VT_DISPATCH) || (V_VT(&varresult) == VT_UNKNOWN))
        {
            hres = IUnknown_QueryInterface(V_UNKNOWN(&varresult),
                &IID_IEnumVARIANT, (void**)&enumvar);
        }
        else
        {
            FIXME("Enumerator: NewEnum unexpected type of varresult (%d).\n", V_VT(&varresult));
            hres = E_INVALIDARG;
        }
        VariantClear(&varresult);
        if (FAILED(hres))
            return hres;
    }

    hres = alloc_enumerator(ctx, ((void*)0), &enumerator);
    if (FAILED(hres))
    {
        if (enumvar)
            IEnumVARIANT_Release(enumvar);
        return hres;
    }

    enumerator->enumvar = enumvar;
    enumerator->atend = !enumvar;
    hres = enumvar_get_next_item(enumerator);
    if (FAILED(hres))
    {
        jsdisp_release(&enumerator->dispex);
        return hres;
    }

    *ret = &enumerator->dispex;
    return S_OK;
}
