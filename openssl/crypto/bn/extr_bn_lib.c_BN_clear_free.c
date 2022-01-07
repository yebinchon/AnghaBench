
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * d; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_MALLOCED ;
 int BN_FLG_STATIC_DATA ;
 scalar_t__ BN_get_flags (TYPE_1__*,int ) ;
 int OPENSSL_cleanse (TYPE_1__*,int) ;
 int OPENSSL_free (TYPE_1__*) ;
 int bn_free_d (TYPE_1__*,int) ;

void BN_clear_free(BIGNUM *a)
{
    if (a == ((void*)0))
        return;
    if (a->d != ((void*)0) && !BN_get_flags(a, BN_FLG_STATIC_DATA))
        bn_free_d(a, 1);
    if (BN_get_flags(a, BN_FLG_MALLOCED)) {
        OPENSSL_cleanse(a, sizeof(*a));
        OPENSSL_free(a);
    }
}
