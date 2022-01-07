
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * d; } ;
struct TYPE_4__ {scalar_t__ partial_len; TYPE_1__ key; } ;
typedef int PROV_CIPHER_CTX ;
typedef TYPE_2__ PROV_CHACHA20_CTX ;


 unsigned int CHACHA_KEY_SIZE ;
 int CHACHA_U8TOU32 (int const*) ;

__attribute__((used)) static int chacha20_initkey(PROV_CIPHER_CTX *bctx, const uint8_t *key,
                            size_t keylen)
{
    PROV_CHACHA20_CTX *ctx = (PROV_CHACHA20_CTX *)bctx;
    unsigned int i;

    if (key != ((void*)0)) {
        for (i = 0; i < CHACHA_KEY_SIZE; i += 4)
            ctx->key.d[i / 4] = CHACHA_U8TOU32(key + i);
    }
    ctx->partial_len = 0;
    return 1;
}
