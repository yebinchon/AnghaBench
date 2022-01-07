
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int bytes; void const* buffer; } ;
typedef TYPE_1__ ngx_sha1_t ;


 int ngx_memcpy (void const*,void const*,size_t) ;
 void* ngx_sha1_body (TYPE_1__*,void const*,size_t) ;

void
ngx_sha1_update(ngx_sha1_t *ctx, const void *data, size_t size)
{
    size_t used, free;

    used = (size_t) (ctx->bytes & 0x3f);
    ctx->bytes += size;

    if (used) {
        free = 64 - used;

        if (size < free) {
            ngx_memcpy(&ctx->buffer[used], data, size);
            return;
        }

        ngx_memcpy(&ctx->buffer[used], data, free);
        data = (u_char *) data + free;
        size -= free;
        (void) ngx_sha1_body(ctx, ctx->buffer, 64);
    }

    if (size >= 64) {
        data = ngx_sha1_body(ctx, data, size & ~(size_t) 0x3f);
        size &= 0x3f;
    }

    ngx_memcpy(ctx->buffer, data, size);
}
