
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int* d; } ;
typedef int BN_ULONG ;
typedef int BN_ULLONG ;
typedef TYPE_1__ BIGNUM ;


 scalar_t__ BN_BITS2 ;
 int BN_BITS4 ;
 int BN_MASK2 ;
 int BN_MASK2l ;

BN_ULONG BN_mod_word(const BIGNUM *a, BN_ULONG w)
 {

 BN_ULONG ret=0;



 int i;

 w&=BN_MASK2;
 for (i=a->top-1; i>=0; i--)
  {

  ret=((ret<<BN_BITS4)|((a->d[i]>>BN_BITS4)&BN_MASK2l))%w;
  ret=((ret<<BN_BITS4)|(a->d[i]&BN_MASK2l))%w;




  }
 return((BN_ULONG)ret);
 }
