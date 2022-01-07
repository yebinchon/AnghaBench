
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int HRESULT ;


 int TRACE (char*,int ) ;
 int debugstr_jsstr (int *) ;
 int * get_op_str (int *,int ) ;
 int jsstr_addref (int *) ;
 int jsval_string (int ) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_str(script_ctx_t *ctx)
{
    jsstr_t *str = get_op_str(ctx, 0);

    TRACE("%s\n", debugstr_jsstr(str));

    return stack_push(ctx, jsval_string(jsstr_addref(str)));
}
