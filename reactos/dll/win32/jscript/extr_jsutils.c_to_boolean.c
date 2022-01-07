
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_FAIL ;
 int E_NOTIMPL ;
 int FALSE ;
 int FIXME (char*,int ) ;







 int S_OK ;
 int assert (int ) ;
 int debugstr_variant (int ) ;
 int get_bool (int ) ;
 int get_number (int ) ;
 int * get_object (int ) ;
 int get_string (int ) ;
 int get_variant (int ) ;
 int isnan (int ) ;
 int jsstr_length (int ) ;
 int jsval_type (int ) ;

HRESULT to_boolean(jsval_t val, BOOL *ret)
{
    switch(jsval_type(val)) {
    case 129:
    case 133:
        *ret = FALSE;
        return S_OK;
    case 131:
        *ret = get_object(val) != ((void*)0);
        return S_OK;
    case 130:
        *ret = jsstr_length(get_string(val)) != 0;
        return S_OK;
    case 132:
        *ret = !isnan(get_number(val)) && get_number(val);
        return S_OK;
    case 134:
        *ret = get_bool(val);
        return S_OK;
    case 128:
        FIXME("unimplemented for variant %s\n", debugstr_variant(get_variant(val)));
        return E_NOTIMPL;
    }

    assert(0);
    return E_FAIL;
}
