
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int * h; int outlen; } ;
struct TYPE_6__ {int digest_length; } ;
typedef TYPE_1__ BLAKE2S_PARAM ;
typedef TYPE_2__ BLAKE2S_CTX ;


 int assert (int) ;
 int blake2s_init0 (TYPE_2__*) ;
 int load32 (int const*) ;

__attribute__((used)) static void blake2s_init_param(BLAKE2S_CTX *S, const BLAKE2S_PARAM *P)
{
    size_t i;
    const uint8_t *p = (const uint8_t *)(P);

    blake2s_init0(S);
    S->outlen = P->digest_length;



    assert(sizeof(BLAKE2S_PARAM) == 32);

    for (i = 0; i < 8; ++i) {
        S->h[i] ^= load32(&p[i*4]);
    }
}
