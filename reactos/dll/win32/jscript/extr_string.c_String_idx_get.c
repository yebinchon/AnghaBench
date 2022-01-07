
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
struct TYPE_4__ {int str; } ;
typedef TYPE_1__ StringInstance ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,unsigned int,int ) ;
 int debugstr_jsstr (int *) ;
 int * jsstr_substr (int ,unsigned int,int) ;
 int jsval_string (int *) ;
 TYPE_1__* string_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT String_idx_get(jsdisp_t *jsdisp, unsigned idx, jsval_t *r)
{
    StringInstance *string = string_from_jsdisp(jsdisp);
    jsstr_t *ret;

    ret = jsstr_substr(string->str, idx, 1);
    if(!ret)
        return E_OUTOFMEMORY;

    TRACE("%p[%u] = %s\n", string, idx, debugstr_jsstr(ret));

    *r = jsval_string(ret);
    return S_OK;
}
