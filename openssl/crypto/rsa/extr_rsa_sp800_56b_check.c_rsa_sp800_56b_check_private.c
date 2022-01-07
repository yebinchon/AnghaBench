
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * n; int * d; } ;
typedef TYPE_1__ RSA ;


 scalar_t__ BN_cmp (int *,int *) ;
 int * BN_value_one () ;

int rsa_sp800_56b_check_private(const RSA *rsa)
{
    if (rsa->d == ((void*)0) || rsa->n == ((void*)0))
        return 0;
    return BN_cmp(rsa->d, BN_value_one()) >= 0 && BN_cmp(rsa->d, rsa->n) < 0;
}
