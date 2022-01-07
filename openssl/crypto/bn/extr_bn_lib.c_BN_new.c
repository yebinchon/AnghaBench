
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_MALLOCED ;
 int BN_F_BN_NEW ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int bn_check_top (TYPE_1__*) ;

BIGNUM *BN_new(void)
{
    BIGNUM *ret;

    if ((ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        BNerr(BN_F_BN_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->flags = BN_FLG_MALLOCED;
    bn_check_top(ret);
    return ret;
}
