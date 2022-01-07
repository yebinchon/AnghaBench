
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ NumberInstance ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int jsval_number (int ) ;
 TYPE_1__* number_from_jsdisp (int *) ;

__attribute__((used)) static HRESULT Number_get_value(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    NumberInstance *number = number_from_jsdisp(jsthis);

    TRACE("(%p)\n", number);

    *r = jsval_number(number->value);
    return S_OK;
}
