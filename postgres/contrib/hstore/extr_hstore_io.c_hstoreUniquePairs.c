
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int keylen; int vallen; scalar_t__ isnull; int val; int key; scalar_t__ needfree; } ;
typedef TYPE_1__ Pairs ;


 int comparePairs ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int pfree (int ) ;
 int qsort (void*,int,int,int ) ;

int
hstoreUniquePairs(Pairs *a, int32 l, int32 *buflen)
{
 Pairs *ptr,
      *res;

 *buflen = 0;
 if (l < 2)
 {
  if (l == 1)
   *buflen = a->keylen + ((a->isnull) ? 0 : a->vallen);
  return l;
 }

 qsort((void *) a, l, sizeof(Pairs), comparePairs);





 ptr = a + 1;
 res = a;
 while (ptr - a < l)
 {
  if (ptr->keylen == res->keylen &&
   memcmp(ptr->key, res->key, res->keylen) == 0)
  {
   if (ptr->needfree)
   {
    pfree(ptr->key);
    pfree(ptr->val);
   }
  }
  else
  {
   *buflen += res->keylen + ((res->isnull) ? 0 : res->vallen);
   res++;
   if (res != ptr)
    memcpy(res, ptr, sizeof(Pairs));
  }

  ptr++;
 }

 *buflen += res->keylen + ((res->isnull) ? 0 : res->vallen);
 return res + 1 - a;
}
