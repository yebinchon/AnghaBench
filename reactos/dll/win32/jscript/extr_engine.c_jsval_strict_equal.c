
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_type_t ;
typedef int jsval_t ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_NOTIMPL ;
 int FALSE ;
 int FIXME (char*) ;







 int S_OK ;
 int TRACE (char*) ;
 int TRUE ;
 int disp_cmp (int ,int ,int*) ;
 int get_bool (int ) ;
 int get_number (int ) ;
 int get_object (int ) ;
 int get_string (int ) ;
 int is_null_instance (int ) ;
 int jsstr_eq (int ,int ) ;
 int jsval_type (int ) ;

HRESULT jsval_strict_equal(jsval_t lval, jsval_t rval, BOOL *ret)
{
    jsval_type_t type = jsval_type(lval);

    TRACE("\n");

    if(type != jsval_type(rval)) {
        if(is_null_instance(lval))
            *ret = is_null_instance(rval);
        else
            *ret = FALSE;
        return S_OK;
    }

    switch(type) {
    case 129:
    case 133:
        *ret = TRUE;
        break;
    case 131:
        return disp_cmp(get_object(lval), get_object(rval), ret);
    case 130:
        *ret = jsstr_eq(get_string(lval), get_string(rval));
        break;
    case 132:
        *ret = get_number(lval) == get_number(rval);
        break;
    case 134:
        *ret = !get_bool(lval) == !get_bool(rval);
        break;
    case 128:
        FIXME("VARIANT not implemented\n");
        return E_NOTIMPL;
    }

    return S_OK;
}
