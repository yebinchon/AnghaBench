
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_SECURE ;
 TYPE_1__* BN_new () ;

BIGNUM *BN_secure_new(void)
 {
     BIGNUM *ret = BN_new();
     if (ret != ((void*)0))
         ret->flags |= BN_FLG_SECURE;
     return ret;
 }
