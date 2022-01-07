
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* ptr; int cc_if_depth; int ccval; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef char WCHAR ;
typedef scalar_t__ BOOL ;


 int JS_E_EXPECTED_CCEND ;
 int JS_E_MISSING_LBRACKET ;
 int WARN (char*) ;
 int check_keyword (TYPE_1__*,char*,int *) ;
 int get_ccbool (int ) ;
 int lex_error (TYPE_1__*,int ) ;
 int parse_cc_expr (TYPE_1__*) ;
 int skip_spaces (TYPE_1__*) ;
 char* wcschr (char const*,char) ;

__attribute__((used)) static int skip_code(parser_ctx_t *ctx, BOOL exec_else)
{
    int if_depth = 1;
    const WCHAR *ptr;

    while(1) {
        ptr = wcschr(ctx->ptr, '@');
        if(!ptr) {
            WARN("No @end\n");
            return lex_error(ctx, JS_E_EXPECTED_CCEND);
        }
        ctx->ptr = ptr+1;

        if(!check_keyword(ctx, L"end", ((void*)0))) {
            if(--if_depth)
                continue;
            return 0;
        }

        if(exec_else && !check_keyword(ctx, L"elif", ((void*)0))) {
            if(if_depth > 1)
                continue;

            if(!skip_spaces(ctx) || *ctx->ptr != '(')
                return lex_error(ctx, JS_E_MISSING_LBRACKET);

            if(!parse_cc_expr(ctx))
                return -1;

            if(!get_ccbool(ctx->ccval))
                continue;


            ctx->cc_if_depth++;
            return 0;
        }

        if(exec_else && !check_keyword(ctx, L"else", ((void*)0))) {
            if(if_depth > 1)
                continue;


            ctx->cc_if_depth++;
            return 0;
        }

        if(!check_keyword(ctx, L"if", ((void*)0))) {
            if_depth++;
            continue;
        }

        ctx->ptr++;
    }
}
