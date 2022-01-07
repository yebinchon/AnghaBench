
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t buf_size; size_t buf_len; int * buf; } ;
typedef TYPE_1__ stringify_ctx_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int * heap_alloc (size_t) ;
 int * heap_realloc (int *,size_t) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static BOOL append_string_len(stringify_ctx_t *ctx, const WCHAR *str, size_t len)
{
    if(!ctx->buf_size) {
        ctx->buf = heap_alloc(len*2*sizeof(WCHAR));
        if(!ctx->buf)
            return FALSE;
        ctx->buf_size = len*2;
    }else if(ctx->buf_len + len > ctx->buf_size) {
        WCHAR *new_buf;
        size_t new_size;

        new_size = ctx->buf_size * 2 + len;
        new_buf = heap_realloc(ctx->buf, new_size*sizeof(WCHAR));
        if(!new_buf)
            return FALSE;
        ctx->buf = new_buf;
        ctx->buf_size = new_size;
    }

    if(len)
        memcpy(ctx->buf + ctx->buf_len, str, len*sizeof(WCHAR));
    ctx->buf_len += len;
    return TRUE;
}
