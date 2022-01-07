
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * p; int s; } ;
typedef TYPE_1__ bf_key ;


 int BF_ENC (int ,int ) ;
 int BF_ROUNDS ;

__attribute__((used)) static void bf_enc(uint32_t *x, bf_key *key)
{
    uint32_t Xl;
    uint32_t Xr;
    uint32_t temp;
    int i;

    Xl = x[0];
    Xr = x[1];

    for (i = 0; i < BF_ROUNDS; ++i)
    {
        Xl ^= key->p[i];
        Xr ^= BF_ENC(Xl,key->s);

        temp = Xl;
        Xl = Xr;
        Xr = temp;
    }

    Xl ^= key->p[BF_ROUNDS];
    Xr ^= key->p[BF_ROUNDS + 1];

    x[0] = Xr;
    x[1] = Xl;
}
