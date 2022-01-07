
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int count; int * buf; } ;
typedef TYPE_1__ SHA_CTX ;


 int SHA1_Transform (TYPE_1__*) ;

void SHA_update(SHA_CTX* ctx, const void* data, int len) {
    int i = (int) (ctx->count & 63);
    const uint8_t* p = (const uint8_t*)data;

    ctx->count += len;

    while (len--) {
        ctx->buf[i++] = *p++;
        if (i == 64) {
            SHA1_Transform(ctx);
            i = 0;
        }
    }
}
