
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; char* end; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int JS_E_EXPECTED_AT ;
 int JS_E_EXPECTED_IDENTIFIER ;
 int TRUE ;
 scalar_t__ is_identifier_char (char) ;
 int is_identifier_first_char (char) ;
 int lex_error (TYPE_1__*,int ) ;

__attribute__((used)) static BOOL parse_cc_identifier(parser_ctx_t *ctx, const WCHAR **ret, unsigned *ret_len)
{
    if(*ctx->ptr != '@') {
        lex_error(ctx, JS_E_EXPECTED_AT);
        return FALSE;
    }

    if(!is_identifier_first_char(*++ctx->ptr)) {
        lex_error(ctx, JS_E_EXPECTED_IDENTIFIER);
        return FALSE;
    }

    *ret = ctx->ptr;
    while(++ctx->ptr < ctx->end && is_identifier_char(*ctx->ptr));
    *ret_len = ctx->ptr - *ret;
    return TRUE;
}
