
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ top; int neg; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_dec2bn (TYPE_1__**,char const*) ;
 int BN_hex2bn (TYPE_1__**,char const*) ;

int BN_asc2bn(BIGNUM **bn, const char *a)
{
    const char *p = a;

    if (*p == '-')
        p++;

    if (p[0] == '0' && (p[1] == 'X' || p[1] == 'x')) {
        if (!BN_hex2bn(bn, p + 2))
            return 0;
    } else {
        if (!BN_dec2bn(bn, p))
            return 0;
    }

    if (*a == '-' && (*bn)->top != 0)
        (*bn)->neg = 1;
    return 1;
}
