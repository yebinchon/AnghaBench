
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ const* ptr; } ;
typedef TYPE_1__ json_parse_ctx_t ;
typedef scalar_t__ WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ is_identifier_char (scalar_t__ const) ;

__attribute__((used)) static BOOL is_keyword(json_parse_ctx_t *ctx, const WCHAR *keyword)
{
    unsigned i;
    for(i=0; keyword[i]; i++) {
        if(!ctx->ptr[i] || keyword[i] != ctx->ptr[i])
            return FALSE;
    }
    if(is_identifier_char(ctx->ptr[i]))
        return FALSE;
    ctx->ptr += i;
    return TRUE;
}
