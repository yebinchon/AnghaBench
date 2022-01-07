
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ NumberInstance ;
typedef int HRESULT ;


 int JS_E_NUMBER_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 int jsval_number (int ) ;
 TYPE_1__* number_this (int *) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Number_valueOf(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    NumberInstance *number;

    TRACE("\n");

    if(!(number = number_this(jsthis)))
        return throw_type_error(ctx, JS_E_NUMBER_EXPECTED, ((void*)0));

    if(r)
        *r = jsval_number(number->value);
    return S_OK;
}
