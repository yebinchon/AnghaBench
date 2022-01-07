
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;


 int BN_F_BN_GENCB_NEW ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_malloc (int) ;

BN_GENCB *BN_GENCB_new(void)
{
    BN_GENCB *ret;

    if ((ret = OPENSSL_malloc(sizeof(*ret))) == ((void*)0)) {
        BNerr(BN_F_BN_GENCB_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    return ret;
}
