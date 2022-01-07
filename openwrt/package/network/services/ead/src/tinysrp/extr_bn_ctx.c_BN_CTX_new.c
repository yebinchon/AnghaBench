
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ BN_CTX ;


 int BN_CTX_init (TYPE_1__*) ;
 int BN_FLG_MALLOCED ;
 scalar_t__ malloc (int) ;

BN_CTX *BN_CTX_new(void)
 {
 BN_CTX *ret;

 ret=(BN_CTX *)malloc(sizeof(BN_CTX));
 if (ret == ((void*)0))
  {
  return(((void*)0));
  }

 BN_CTX_init(ret);
 ret->flags=BN_FLG_MALLOCED;
 return(ret);
 }
