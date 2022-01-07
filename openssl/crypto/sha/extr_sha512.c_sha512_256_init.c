
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_len; scalar_t__ num; scalar_t__ Nh; scalar_t__ Nl; void** h; } ;
typedef TYPE_1__ SHA512_CTX ;


 int SHA256_DIGEST_LENGTH ;
 void* U64 (int) ;

int sha512_256_init(SHA512_CTX *c)
{
    c->h[0] = U64(0x22312194fc2bf72c);
    c->h[1] = U64(0x9f555fa3c84c64c2);
    c->h[2] = U64(0x2393b86b6f53b151);
    c->h[3] = U64(0x963877195940eabd);
    c->h[4] = U64(0x96283ee2a88effe3);
    c->h[5] = U64(0xbe5e1e2553863992);
    c->h[6] = U64(0x2b0199fc2c85b8aa);
    c->h[7] = U64(0x0eb72ddc81c52ca2);

    c->Nl = 0;
    c->Nh = 0;
    c->num = 0;
    c->md_len = SHA256_DIGEST_LENGTH;
    return 1;
}
