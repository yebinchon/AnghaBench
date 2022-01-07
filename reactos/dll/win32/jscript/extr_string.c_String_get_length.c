
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
 int TRACE (char*,int *) ;
 int jsstr_length (int ) ;
 int jsval_number (int ) ;
 TYPE_1__* string_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT String_get_length(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    StringInstance *string = string_from_jsdisp(jsthis);

    TRACE("%p\n", jsthis);

    *r = jsval_number(jsstr_length(string->str));
    return S_OK;
}
