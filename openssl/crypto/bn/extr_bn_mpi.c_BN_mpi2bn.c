
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int neg; scalar_t__ top; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_F_BN_MPI2BN ;
 int BN_R_ENCODING_ERROR ;
 int BN_R_INVALID_LENGTH ;
 int * BN_bin2bn (unsigned char const*,int,TYPE_1__*) ;
 int BN_clear_bit (TYPE_1__*,scalar_t__) ;
 int BN_free (TYPE_1__*) ;
 TYPE_1__* BN_new () ;
 scalar_t__ BN_num_bits (TYPE_1__*) ;
 int BNerr (int ,int ) ;
 int bn_check_top (TYPE_1__*) ;

BIGNUM *BN_mpi2bn(const unsigned char *d, int n, BIGNUM *ain)
{
    long len;
    int neg = 0;
    BIGNUM *a = ((void*)0);

    if (n < 4) {
        BNerr(BN_F_BN_MPI2BN, BN_R_INVALID_LENGTH);
        return ((void*)0);
    }
    len = ((long)d[0] << 24) | ((long)d[1] << 16) | ((int)d[2] << 8) | (int)
        d[3];
    if ((len + 4) != n) {
        BNerr(BN_F_BN_MPI2BN, BN_R_ENCODING_ERROR);
        return ((void*)0);
    }

    if (ain == ((void*)0))
        a = BN_new();
    else
        a = ain;

    if (a == ((void*)0))
        return ((void*)0);

    if (len == 0) {
        a->neg = 0;
        a->top = 0;
        return a;
    }
    d += 4;
    if ((*d) & 0x80)
        neg = 1;
    if (BN_bin2bn(d, (int)len, a) == ((void*)0)) {
        if (ain == ((void*)0))
            BN_free(a);
        return ((void*)0);
    }
    a->neg = neg;
    if (neg) {
        BN_clear_bit(a, BN_num_bits(a) - 1);
    }
    bn_check_top(a);
    return a;
}
