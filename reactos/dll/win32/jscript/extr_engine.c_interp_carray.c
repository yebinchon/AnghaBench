
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*,unsigned int const) ;
 int create_array (int *,unsigned int const,int **) ;
 unsigned int get_op_uint (int *,int ) ;
 int jsval_obj (int *) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_carray(script_ctx_t *ctx)
{
    const unsigned arg = get_op_uint(ctx, 0);
    jsdisp_t *array;
    HRESULT hres;

    TRACE("%u\n", arg);

    hres = create_array(ctx, arg, &array);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_obj(array));
}
