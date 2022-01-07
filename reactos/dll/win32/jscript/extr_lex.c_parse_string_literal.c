
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* ptr; scalar_t__* end; int compiler; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef int jsstr_t ;
typedef scalar_t__ WCHAR ;
typedef scalar_t__ BOOL ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int JS_E_UNTERMINATED_STRING ;
 scalar_t__ TRUE ;
 int WARN (char*) ;
 int * compiler_alloc_string_len (int ,scalar_t__ const*,size_t) ;
 int lex_error (TYPE_1__*,int ) ;
 int memcpy (scalar_t__*,scalar_t__ const*,size_t) ;
 scalar_t__* parser_alloc (TYPE_1__*,size_t) ;
 int tStringLiteral ;
 int unescape (scalar_t__*,size_t*) ;

__attribute__((used)) static int parse_string_literal(parser_ctx_t *ctx, jsstr_t **ret, WCHAR endch)
{
    const WCHAR *ptr = ++ctx->ptr, *ret_str = ptr;
    BOOL needs_unescape = FALSE;
    WCHAR *unescape_str;
    size_t len;

    while(ctx->ptr < ctx->end && *ctx->ptr != endch) {
        if(*ctx->ptr++ == '\\') {
            ctx->ptr++;
            needs_unescape = TRUE;
        }
    }

    if(ctx->ptr == ctx->end)
        return lex_error(ctx, JS_E_UNTERMINATED_STRING);

    len = ctx->ptr - ptr;
    ctx->ptr++;

    if(needs_unescape) {
        ret_str = unescape_str = parser_alloc(ctx, len * sizeof(WCHAR));
        if(!unescape_str)
            return lex_error(ctx, E_OUTOFMEMORY);
        memcpy(unescape_str, ptr, len * sizeof(WCHAR));
        if(!unescape(unescape_str, &len)) {
            WARN("unescape failed\n");
            return lex_error(ctx, E_FAIL);
        }
    }

    if(!(*ret = compiler_alloc_string_len(ctx->compiler, ret_str, len)))
        return lex_error(ctx, E_OUTOFMEMORY);


    return tStringLiteral;
}
