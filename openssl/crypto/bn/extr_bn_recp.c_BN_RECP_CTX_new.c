
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int Nr; int N; } ;
typedef TYPE_1__ BN_RECP_CTX ;


 int BN_FLG_MALLOCED ;
 int BN_F_BN_RECP_CTX_NEW ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int bn_init (int *) ;

BN_RECP_CTX *BN_RECP_CTX_new(void)
{
    BN_RECP_CTX *ret;

    if ((ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        BNerr(BN_F_BN_RECP_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    bn_init(&(ret->N));
    bn_init(&(ret->Nr));
    ret->flags = BN_FLG_MALLOCED;
    return ret;
}
