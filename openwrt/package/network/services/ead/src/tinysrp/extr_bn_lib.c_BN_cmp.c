
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ neg; int top; scalar_t__* d; } ;
typedef scalar_t__ BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int bn_check_top (TYPE_1__ const*) ;

int BN_cmp(const BIGNUM *a, const BIGNUM *b)
 {
 int i;
 int gt,lt;
 BN_ULONG t1,t2;

 if ((a == ((void*)0)) || (b == ((void*)0)))
  {
  if (a != ((void*)0))
   return(-1);
  else if (b != ((void*)0))
   return(1);
  else
   return(0);
  }

 bn_check_top(a);
 bn_check_top(b);

 if (a->neg != b->neg)
  {
  if (a->neg)
   return(-1);
  else return(1);
  }
 if (a->neg == 0)
  { gt=1; lt= -1; }
 else { gt= -1; lt=1; }

 if (a->top > b->top) return(gt);
 if (a->top < b->top) return(lt);
 for (i=a->top-1; i>=0; i--)
  {
  t1=a->d[i];
  t2=b->d[i];
  if (t1 > t2) return(gt);
  if (t1 < t2) return(lt);
  }
 return(0);
 }
