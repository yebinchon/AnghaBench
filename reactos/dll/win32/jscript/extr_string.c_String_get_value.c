
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {int str; } ;
typedef TYPE_1__ StringInstance ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*) ;
 int jsstr_addref (int ) ;
 int jsval_string (int ) ;
 TYPE_1__* string_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT String_get_value(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    StringInstance *This = string_from_jsdisp(jsthis);

    TRACE("\n");

    *r = jsval_string(jsstr_addref(This->str));
    return S_OK;
}
