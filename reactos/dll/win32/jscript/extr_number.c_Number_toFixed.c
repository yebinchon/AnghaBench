
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ NumberInstance ;
typedef int INT ;
typedef int HRESULT ;
typedef int DOUBLE ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int JS_E_FRACTION_DIGITS_OUT_OF_RANGE ;
 int JS_E_NUMBER_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 int is_finite (int ) ;
 int jsstr_release (int *) ;
 int jsval_number (int ) ;
 int jsval_string (int *) ;
 TYPE_1__* number_this (int *) ;
 int * number_to_fixed (int ,int) ;
 int throw_range_error (int *,int ,int *) ;
 int throw_type_error (int *,int ,int *) ;
 int to_int32 (int *,int ,int*) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT Number_toFixed(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    NumberInstance *number;
    DOUBLE val;
    INT prec = 0;
    jsstr_t *str;
    HRESULT hres;

    TRACE("\n");

    if(!(number = number_this(jsthis)))
        return throw_type_error(ctx, JS_E_NUMBER_EXPECTED, ((void*)0));

    if(argc) {
        hres = to_int32(ctx, argv[0], &prec);
        if(FAILED(hres))
            return hres;

        if(prec<0 || prec>20)
            return throw_range_error(ctx, JS_E_FRACTION_DIGITS_OUT_OF_RANGE, ((void*)0));
    }

    val = number->value;
    if(!is_finite(val)) {
        hres = to_string(ctx, jsval_number(val), &str);
        if(FAILED(hres))
            return hres;
    }else {
        str = number_to_fixed(val, prec);
        if(!str)
            return E_OUTOFMEMORY;
    }

    if(r)
        *r = jsval_string(str);
    else
        jsstr_release(str);
    return S_OK;
}
