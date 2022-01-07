
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_MALLOCED ;
 int BN_FLG_STATIC_DATA ;
 int BN_get_flags (TYPE_1__*,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int bn_free_d (TYPE_1__*,int ) ;

void BN_free(BIGNUM *a)
{
    if (a == ((void*)0))
        return;
    if (!BN_get_flags(a, BN_FLG_STATIC_DATA))
        bn_free_d(a, 0);
    if (a->flags & BN_FLG_MALLOCED)
        OPENSSL_free(a);
}
