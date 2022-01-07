
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ptr; } ;
typedef TYPE_1__ json_parse_ctx_t ;
typedef int WCHAR ;


 scalar_t__ is_json_space (int ) ;

__attribute__((used)) static WCHAR skip_spaces(json_parse_ctx_t *ctx)
{
    while(is_json_space(*ctx->ptr))
        ctx->ptr++;
    return *ctx->ptr;
}
