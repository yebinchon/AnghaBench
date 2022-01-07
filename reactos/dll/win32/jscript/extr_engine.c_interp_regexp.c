
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int ,unsigned int const) ;
 int create_regexp (int *,int *,unsigned int const,int **) ;
 int debugstr_jsstr (int *) ;
 int * get_op_str (int *,int ) ;
 unsigned int get_op_uint (int *,int) ;
 int jsval_obj (int *) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_regexp(script_ctx_t *ctx)
{
    jsstr_t *source = get_op_str(ctx, 0);
    const unsigned flags = get_op_uint(ctx, 1);
    jsdisp_t *regexp;
    HRESULT hres;

    TRACE("%s %x\n", debugstr_jsstr(source), flags);

    hres = create_regexp(ctx, source, flags, &regexp);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_obj(regexp));
}
