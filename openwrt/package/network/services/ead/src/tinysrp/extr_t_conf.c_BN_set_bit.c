
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int* d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int * bn_wexpand (TYPE_1__*,int) ;

int BN_set_bit(BIGNUM *a, int n)
 {
 int i,j,k;

 i=n/BN_BITS2;
 j=n%BN_BITS2;
 if (a->top <= i)
  {
  if (bn_wexpand(a,i+1) == ((void*)0)) return(0);
  for(k=a->top; k<i+1; k++)
   a->d[k]=0;
  a->top=i+1;
  }

 a->d[i]|=(((BN_ULONG)1)<<j);
 return(1);
 }
