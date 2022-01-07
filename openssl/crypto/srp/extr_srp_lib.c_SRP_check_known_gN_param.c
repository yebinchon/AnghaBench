
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* id; int N; int g; } ;
typedef int BIGNUM ;


 scalar_t__ BN_cmp (int ,int const*) ;
 size_t KNOWN_GN_NUMBER ;
 TYPE_1__* knowngN ;

char *SRP_check_known_gN_param(const BIGNUM *g, const BIGNUM *N)
{
    size_t i;
    if ((g == ((void*)0)) || (N == ((void*)0)))
        return ((void*)0);

    for (i = 0; i < KNOWN_GN_NUMBER; i++) {
        if (BN_cmp(knowngN[i].g, g) == 0 && BN_cmp(knowngN[i].N, N) == 0)
            return knowngN[i].id;
    }
    return ((void*)0);
}
