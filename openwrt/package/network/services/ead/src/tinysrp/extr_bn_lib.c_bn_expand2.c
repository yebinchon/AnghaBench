
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dmax; int top; int max; scalar_t__* d; } ;
typedef scalar_t__ BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_STATIC_DATA ;
 scalar_t__ BN_get_flags (TYPE_1__*,int ) ;
 int bn_check_top (TYPE_1__*) ;
 int free (scalar_t__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;

BIGNUM *bn_expand2(BIGNUM *b, int words)
 {
 BN_ULONG *A,*a;
 const BN_ULONG *B;
 int i;

 bn_check_top(b);

 if (words > b->dmax)
  {
  bn_check_top(b);
  if (BN_get_flags(b,BN_FLG_STATIC_DATA))
   {
   return(((void*)0));
   }
  a=A=(BN_ULONG *)malloc(sizeof(BN_ULONG)*(words+1));
  if (A == ((void*)0))
   {
   return(((void*)0));
   }

  B=b->d;

  if (B != ((void*)0))
   {
   for (i=b->top>>2; i>0; i--,A+=4,B+=4)
    {
    BN_ULONG a0,a1,a2,a3;
    a0=B[0]; a1=B[1]; a2=B[2]; a3=B[3];
    A[0]=a0; A[1]=a1; A[2]=a2; A[3]=a3;
    }
   switch (b->top&3)
    {
    case 3: A[2]=B[2];
    case 2: A[1]=B[1];
    case 1: A[0]=B[0];
    case 0: ;
    }

   free(b->d);
   }

  b->d=a;
  b->dmax=words;



  A= &(b->d[b->top]);
  for (i=(b->dmax - b->top)>>3; i>0; i--,A+=8)
   {
   A[0]=0; A[1]=0; A[2]=0; A[3]=0;
   A[4]=0; A[5]=0; A[6]=0; A[7]=0;
   }
  for (i=(b->dmax - b->top)&7; i>0; i--,A++)
   A[0]=0;
  }
 return(b);
 }
