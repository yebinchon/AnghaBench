
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; char* end; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WARN (char*) ;
 int is_endline (char) ;
 int is_identifier_char (char) ;

__attribute__((used)) static BOOL skip_comment(parser_ctx_t *ctx)
{
    if(ctx->ptr+1 >= ctx->end)
        return FALSE;

    if(*ctx->ptr != '/') {
        if(*ctx->ptr == '@' && ctx->ptr+2 < ctx->end && ctx->ptr[1] == '*' && ctx->ptr[2] == '/') {
            ctx->ptr += 3;
            return TRUE;
        }

        return FALSE;
    }

    switch(ctx->ptr[1]) {
    case '*':
        ctx->ptr += 2;
        if(ctx->ptr+2 < ctx->end && *ctx->ptr == '@' && is_identifier_char(ctx->ptr[1]))
            return FALSE;
        while(ctx->ptr+1 < ctx->end && (ctx->ptr[0] != '*' || ctx->ptr[1] != '/'))
            ctx->ptr++;

        if(ctx->ptr[0] == '*' && ctx->ptr[1] == '/') {
            ctx->ptr += 2;
        }else {
            WARN("unexpected end of file (missing end of comment)\n");
            ctx->ptr = ctx->end;
        }
        break;
    case '/':
        ctx->ptr += 2;
        if(ctx->ptr+2 < ctx->end && *ctx->ptr == '@' && is_identifier_char(ctx->ptr[1]))
            return FALSE;
        while(ctx->ptr < ctx->end && !is_endline(*ctx->ptr))
            ctx->ptr++;
        break;
    default:
        return FALSE;
    }

    return TRUE;
}
