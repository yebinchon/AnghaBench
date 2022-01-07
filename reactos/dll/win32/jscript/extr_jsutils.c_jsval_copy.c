
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int HRESULT ;


 int E_FAIL ;
 int IDispatch_AddRef (int ) ;







 int S_OK ;
 int assert (int ) ;
 int get_object (int ) ;
 int get_string (int ) ;
 int get_variant (int ) ;
 int jsstr_addref (int ) ;
 int jsval_type (int ) ;
 int jsval_variant (int *,int ) ;

HRESULT jsval_copy(jsval_t v, jsval_t *r)
{
    switch(jsval_type(v)) {
    case 129:
    case 133:
    case 132:
    case 134:
        *r = v;
        return S_OK;
    case 131:
        if(get_object(v))
            IDispatch_AddRef(get_object(v));
        *r = v;
        return S_OK;
    case 130: {
        jsstr_addref(get_string(v));
        *r = v;
        return S_OK;
    }
    case 128:
        return jsval_variant(r, get_variant(v));
    }

    assert(0);
    return E_FAIL;
}
