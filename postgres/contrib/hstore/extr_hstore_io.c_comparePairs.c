
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ keylen; scalar_t__ needfree; int key; } ;
typedef TYPE_1__ Pairs ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
comparePairs(const void *a, const void *b)
{
 const Pairs *pa = a;
 const Pairs *pb = b;

 if (pa->keylen == pb->keylen)
 {
  int res = memcmp(pa->key, pb->key, pa->keylen);

  if (res)
   return res;


  if (pb->needfree == pa->needfree)
   return 0;
  else if (pa->needfree)
   return 1;
  else
   return -1;
 }
 return (pa->keylen > pb->keylen) ? 1 : -1;
}
