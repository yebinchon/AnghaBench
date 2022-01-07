
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ BN_MONT_CTX ;


 int BN_FLG_MALLOCED ;
 int BN_MONT_CTX_init (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

BN_MONT_CTX *BN_MONT_CTX_new(void)
 {
 BN_MONT_CTX *ret;

 if ((ret=(BN_MONT_CTX *)malloc(sizeof(BN_MONT_CTX))) == ((void*)0))
  return(((void*)0));

 BN_MONT_CTX_init(ret);
 ret->flags=BN_FLG_MALLOCED;
 return(ret);
 }
