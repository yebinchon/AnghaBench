
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int create_object (int *,int *,int **) ;
 int jsval_obj (int *) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_new_obj(script_ctx_t *ctx)
{
    jsdisp_t *obj;
    HRESULT hres;

    TRACE("\n");

    hres = create_object(ctx, ((void*)0), &obj);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_obj(obj));
}
