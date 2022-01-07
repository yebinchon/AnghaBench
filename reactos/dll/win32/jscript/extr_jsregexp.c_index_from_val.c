
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef double INT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int clear_ei (int *) ;
 double floor (double) ;
 scalar_t__ is_int32 (double) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static INT index_from_val(script_ctx_t *ctx, jsval_t v)
{
    double n;
    HRESULT hres;

    hres = to_number(ctx, v, &n);
    if(FAILED(hres)) {
        clear_ei(ctx);
        return 0;
    }

    n = floor(n);
    return is_int32(n) ? n : 0;
}
