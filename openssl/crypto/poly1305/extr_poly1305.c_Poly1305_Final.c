
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int poly1305_emit_f ;
typedef int poly1305_blocks_f ;
struct TYPE_5__ {int emit; int blocks; } ;
struct TYPE_6__ {size_t num; int* data; int nonce; int opaque; TYPE_1__ func; } ;
typedef TYPE_2__ POLY1305 ;


 int OPENSSL_cleanse (TYPE_2__*,int) ;
 size_t POLY1305_BLOCK_SIZE ;
 int poly1305_blocks (int ,int*,size_t,int ) ;
 int poly1305_emit (int ,unsigned char*,int ) ;

void Poly1305_Final(POLY1305 *ctx, unsigned char mac[16])
{




    size_t num;

    if ((num = ctx->num)) {
        ctx->data[num++] = 1;
        while (num < POLY1305_BLOCK_SIZE)
            ctx->data[num++] = 0;
        poly1305_blocks(ctx->opaque, ctx->data, POLY1305_BLOCK_SIZE, 0);
    }

    poly1305_emit(ctx->opaque, mac, ctx->nonce);


    OPENSSL_cleanse(ctx, sizeof(*ctx));
}
