
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
 int JS_E_NUMBER_EXPECTED ;
 int JS_E_PRECISION_OUT_OF_RANGE ;
 int S_OK ;
 int floor (int ) ;
 int is_finite (int ) ;
 int jsstr_release (int *) ;
 int jsval_number (int ) ;
 int jsval_string (int *) ;
 int log10 (int ) ;
 TYPE_1__* number_this (int *) ;
 int * number_to_exponential (int ,int) ;
 int * number_to_fixed (int ,int) ;
 int throw_range_error (int *,int ,int *) ;
 int throw_type_error (int *,int ,int *) ;
 int to_int32 (int *,int ,int*) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT Number_toPrecision(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    NumberInstance *number;
    INT prec = 0, size;
    jsstr_t *str;
    DOUBLE val;
    HRESULT hres;

    if(!(number = number_this(jsthis)))
        return throw_type_error(ctx, JS_E_NUMBER_EXPECTED, ((void*)0));

    if(argc) {
        hres = to_int32(ctx, argv[0], &prec);
        if(FAILED(hres))
            return hres;

        if(prec<1 || prec>21)
            return throw_range_error(ctx, JS_E_PRECISION_OUT_OF_RANGE, ((void*)0));
    }

    val = number->value;
    if(!is_finite(val) || !prec) {
        hres = to_string(ctx, jsval_number(val), &str);
        if(FAILED(hres))
            return hres;
    }else {
        if(val != 0)
            size = floor(log10(val>0 ? val : -val)) + 1;
        else
            size = 1;

        if(size > prec)
            str = number_to_exponential(val, prec-1);
        else
            str = number_to_fixed(val, prec-size);
        if(!str)
            return E_OUTOFMEMORY;
    }

    if(r)
        *r = jsval_string(str);
    else
        jsstr_release(str);
    return S_OK;
}
