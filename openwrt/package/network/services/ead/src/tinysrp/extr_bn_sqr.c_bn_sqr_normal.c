
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BN_ULONG ;


 int bn_add_words (scalar_t__*,scalar_t__*,scalar_t__*,int) ;
 scalar_t__ bn_mul_add_words (scalar_t__*,scalar_t__*,int,scalar_t__) ;
 scalar_t__ bn_mul_words (scalar_t__*,scalar_t__*,int,scalar_t__) ;
 int bn_sqr_words (scalar_t__*,scalar_t__*,int) ;

void bn_sqr_normal(BN_ULONG *r, BN_ULONG *a, int n, BN_ULONG *tmp)
 {
 int i,j,max;
 BN_ULONG *ap,*rp;

 max=n*2;
 ap=a;
 rp=r;
 rp[0]=rp[max-1]=0;
 rp++;
 j=n;

 if (--j > 0)
  {
  ap++;
  rp[j]=bn_mul_words(rp,ap,j,ap[-1]);
  rp+=2;
  }

 for (i=n-2; i>0; i--)
  {
  j--;
  ap++;
  rp[j]=bn_mul_add_words(rp,ap,j,ap[-1]);
  rp+=2;
  }

 bn_add_words(r,r,r,max);



 bn_sqr_words(tmp,a,n);

 bn_add_words(r,r,tmp,max);
 }
