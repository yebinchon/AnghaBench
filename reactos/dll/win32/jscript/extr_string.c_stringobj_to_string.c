
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int jsval_t ;
struct TYPE_3__ {int str; } ;
typedef TYPE_1__ StringInstance ;
typedef int HRESULT ;


 int E_FAIL ;
 int S_OK ;
 int WARN (char*) ;
 int jsstr_addref (int ) ;
 int jsval_string (int ) ;
 TYPE_1__* string_this (int *) ;

__attribute__((used)) static HRESULT stringobj_to_string(vdisp_t *jsthis, jsval_t *r)
{
    StringInstance *string;

    if(!(string = string_this(jsthis))) {
        WARN("this is not a string object\n");
        return E_FAIL;
    }

    if(r)
        *r = jsval_string(jsstr_addref(string->str));
    return S_OK;
}
