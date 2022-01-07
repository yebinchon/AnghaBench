
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ const* ptr; scalar_t__ const* end; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef scalar_t__ WCHAR ;


 scalar_t__ is_identifier_char (scalar_t__ const) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__* parser_alloc (TYPE_1__*,int) ;
 int tIdentifier ;

__attribute__((used)) static int parse_identifier(parser_ctx_t *ctx, const WCHAR **ret)
{
    const WCHAR *ptr = ctx->ptr++;
    WCHAR *wstr;
    int len;

    while(ctx->ptr < ctx->end && is_identifier_char(*ctx->ptr))
        ctx->ptr++;

    len = ctx->ptr-ptr;

    *ret = wstr = parser_alloc(ctx, (len+1)*sizeof(WCHAR));
    memcpy(wstr, ptr, len*sizeof(WCHAR));
    wstr[len] = 0;


    return tIdentifier;
}
