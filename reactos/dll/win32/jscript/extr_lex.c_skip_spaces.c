
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* ptr; int* end; int nl; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef int BOOL ;


 int TRUE ;
 scalar_t__ is_endline (int ) ;
 scalar_t__ iswspace (int) ;

__attribute__((used)) static BOOL skip_spaces(parser_ctx_t *ctx)
{
    while(ctx->ptr < ctx->end && (iswspace(*ctx->ptr) || *ctx->ptr == 0xFEFF )) {
        if(is_endline(*ctx->ptr++))
            ctx->nl = TRUE;
    }

    return ctx->ptr != ctx->end;
}
