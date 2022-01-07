
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_4__ {int syntax_error_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int error_constr (TYPE_1__*,int ,unsigned int,int *,int *,int ) ;

__attribute__((used)) static HRESULT SyntaxErrorConstr_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
        unsigned argc, jsval_t *argv, jsval_t *r)
{
    TRACE("\n");
    return error_constr(ctx, flags, argc, argv, r, ctx->syntax_error_constr);
}
