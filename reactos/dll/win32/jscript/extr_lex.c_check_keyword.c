
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* ptr; scalar_t__ const* end; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef scalar_t__ WCHAR ;


 scalar_t__ is_identifier_char (scalar_t__ const) ;

__attribute__((used)) static int check_keyword(parser_ctx_t *ctx, const WCHAR *word, const WCHAR **lval)
{
    const WCHAR *p1 = ctx->ptr;
    const WCHAR *p2 = word;

    while(p1 < ctx->end && *p2) {
        if(*p1 != *p2)
            return *p1 - *p2;
        p1++;
        p2++;
    }

    if(*p2 || (p1 < ctx->end && is_identifier_char(*p1)))
        return 1;

    if(lval)
        *lval = word;
    ctx->ptr = p1;
    return 0;
}
