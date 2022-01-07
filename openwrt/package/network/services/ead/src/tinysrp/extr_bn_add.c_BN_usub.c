
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int top; int* d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_MASK2 ;
 int bn_check_top (TYPE_1__ const*) ;
 int bn_fix_top (TYPE_1__*) ;
 int bn_sub_words (int*,int*,int*,int) ;
 int * bn_wexpand (TYPE_1__*,int) ;
 int memcpy (int*,int*,int) ;

int BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
 {
 int max,min;
 register BN_ULONG t1,t2,*ap,*bp,*rp;
 int i,carry;




 bn_check_top(a);
 bn_check_top(b);

 if (a->top < b->top)
  {
  return(0);
  }

 max=a->top;
 min=b->top;
 if (bn_wexpand(r,max) == ((void*)0)) return(0);

 ap=a->d;
 bp=b->d;
 rp=r->d;


 carry=0;
 for (i=0; i<min; i++)
  {
  t1= *(ap++);
  t2= *(bp++);
  if (carry)
   {
   carry=(t1 <= t2);
   t1=(t1-t2-1)&BN_MASK2;
   }
  else
   {
   carry=(t1 < t2);
   t1=(t1-t2)&BN_MASK2;
   }



  *(rp++)=t1&BN_MASK2;
  }







 if (carry)
  {
  while (i < max)
   {
   i++;
   t1= *(ap++);
   t2=(t1-1)&BN_MASK2;
   *(rp++)=t2;
   if (t1 > t2) break;
   }
  }



 if (rp != ap)
  {
  for (;;)
   {
   if (i++ >= max) break;
   rp[0]=ap[0];
   if (i++ >= max) break;
   rp[1]=ap[1];
   if (i++ >= max) break;
   rp[2]=ap[2];
   if (i++ >= max) break;
   rp[3]=ap[3];
   rp+=4;
   ap+=4;
   }
  }


 r->top=max;
 bn_fix_top(r);
 return(1);
 }
