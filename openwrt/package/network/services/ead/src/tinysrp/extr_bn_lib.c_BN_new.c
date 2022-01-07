
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * d; scalar_t__ dmax; scalar_t__ neg; scalar_t__ top; int flags; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_MALLOCED ;
 scalar_t__ malloc (int) ;

BIGNUM *BN_new(void)
 {
 BIGNUM *ret;

 if ((ret=(BIGNUM *)malloc(sizeof(BIGNUM))) == ((void*)0))
  {
  return(((void*)0));
  }
 ret->flags=BN_FLG_MALLOCED;
 ret->top=0;
 ret->neg=0;
 ret->dmax=0;
 ret->d=((void*)0);
 return(ret);
 }
