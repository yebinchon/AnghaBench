
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ minimum; scalar_t__ maximum; } ;
typedef TYPE_1__ GENERAL_SUBTREE ;
typedef int BIGNUM ;


 int * ASN1_INTEGER_to_BN (scalar_t__,int *) ;
 int BN_free (int *) ;
 int BN_is_zero (int *) ;

__attribute__((used)) static int nc_minmax_valid(GENERAL_SUBTREE *sub) {
    BIGNUM *bn = ((void*)0);
    int ok = 1;

    if (sub->maximum)
        ok = 0;

    if (sub->minimum) {
        bn = ASN1_INTEGER_to_BN(sub->minimum, ((void*)0));
        if (bn == ((void*)0) || !BN_is_zero(bn))
            ok = 0;
        BN_free(bn);
    }

    return ok;
}
