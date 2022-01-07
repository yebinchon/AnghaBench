
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ BN_MONT_CTX ;


 int BN_FLG_MALLOCED ;
 int BN_F_BN_MONT_CTX_NEW ;
 int BN_MONT_CTX_init (TYPE_1__*) ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_malloc (int) ;

BN_MONT_CTX *BN_MONT_CTX_new(void)
{
    BN_MONT_CTX *ret;

    if ((ret = OPENSSL_malloc(sizeof(*ret))) == ((void*)0)) {
        BNerr(BN_F_BN_MONT_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    BN_MONT_CTX_init(ret);
    ret->flags = BN_FLG_MALLOCED;
    return ret;
}
