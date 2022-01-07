
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int t ;
struct TYPE_6__ {int top; int* d; int neg; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_MASK2 ;
 int bn_fix_top (TYPE_1__*) ;
 int * bn_wexpand (TYPE_1__*,int) ;
 int memset (int*,int ,int) ;

int BN_lshift(BIGNUM *r, const BIGNUM *a, int n)
 {
 int i,nw,lb,rb;
 BN_ULONG *t,*f;
 BN_ULONG l;

 r->neg=a->neg;
 if (bn_wexpand(r,a->top+(n/BN_BITS2)+1) == ((void*)0)) return(0);
 nw=n/BN_BITS2;
 lb=n%BN_BITS2;
 rb=BN_BITS2-lb;
 f=a->d;
 t=r->d;
 t[a->top+nw]=0;
 if (lb == 0)
  for (i=a->top-1; i>=0; i--)
   t[nw+i]=f[i];
 else
  for (i=a->top-1; i>=0; i--)
   {
   l=f[i];
   t[nw+i+1]|=(l>>rb)&BN_MASK2;
   t[nw+i]=(l<<lb)&BN_MASK2;
   }
 memset(t,0,nw*sizeof(t[0]));


 r->top=a->top+nw+1;
 bn_fix_top(r);
 return(1);
 }
