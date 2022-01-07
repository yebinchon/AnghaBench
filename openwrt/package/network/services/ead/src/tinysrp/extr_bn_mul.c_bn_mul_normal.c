
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;


 int bn_mul_add_words (int *,int *,int,int ) ;
 int bn_mul_words (int *,int *,int,int ) ;
 int printf (char*,int,int) ;

void bn_mul_normal(BN_ULONG *r, BN_ULONG *a, int na, BN_ULONG *b, int nb)
 {
 BN_ULONG *rr;





 if (na < nb)
  {
  int itmp;
  BN_ULONG *ltmp;

  itmp=na; na=nb; nb=itmp;
  ltmp=a; a=b; b=ltmp;

  }
 rr= &(r[na]);
 rr[0]=bn_mul_words(r,a,na,b[0]);

 for (;;)
  {
  if (--nb <= 0) return;
  rr[1]=bn_mul_add_words(&(r[1]),a,na,b[1]);
  if (--nb <= 0) return;
  rr[2]=bn_mul_add_words(&(r[2]),a,na,b[2]);
  if (--nb <= 0) return;
  rr[3]=bn_mul_add_words(&(r[3]),a,na,b[3]);
  if (--nb <= 0) return;
  rr[4]=bn_mul_add_words(&(r[4]),a,na,b[4]);
  rr+=4;
  r+=4;
  b+=4;
  }
 }
