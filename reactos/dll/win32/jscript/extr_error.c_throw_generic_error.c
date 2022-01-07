
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int throw_error (TYPE_1__*,int ,int const*,int ) ;

HRESULT throw_generic_error(script_ctx_t *ctx, HRESULT error, const WCHAR *str)
{
    return throw_error(ctx, error, str, ctx->error_constr);
}
