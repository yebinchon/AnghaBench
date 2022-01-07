
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int emit; int blocks; } ;
struct TYPE_5__ {scalar_t__ num; TYPE_1__ func; int opaque; void** nonce; } ;
typedef TYPE_2__ POLY1305 ;


 void* U8TOU32 (unsigned char const*) ;
 int poly1305_blocks ;
 int poly1305_emit ;
 int poly1305_init (int ,unsigned char const*,...) ;

void Poly1305_Init(POLY1305 *ctx, const unsigned char key[32])
{
    ctx->nonce[0] = U8TOU32(&key[16]);
    ctx->nonce[1] = U8TOU32(&key[20]);
    ctx->nonce[2] = U8TOU32(&key[24]);
    ctx->nonce[3] = U8TOU32(&key[28]);


    poly1305_init(ctx->opaque, key);
    ctx->num = 0;

}
