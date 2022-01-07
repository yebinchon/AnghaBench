
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ len; int name; } ;
typedef TYPE_1__ ltree_level ;
struct TYPE_13__ {int numlevel; } ;
typedef TYPE_2__ ltree ;


 scalar_t__ LEVEL_HDRSIZE ;
 TYPE_1__* LEVEL_NEXT (TYPE_1__*) ;
 TYPE_1__* LTREE_FIRST (TYPE_2__*) ;
 int LTREE_HDRSIZE ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int Min (int,int) ;
 int SET_VARSIZE (TYPE_2__*,int) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (TYPE_1__*,TYPE_1__*,scalar_t__) ;
 scalar_t__ palloc0 (int) ;

ltree *
lca_inner(ltree **a, int len)
{
 int tmp,
    num,
    i,
    reslen;
 ltree **ptr;
 ltree_level *l1,
      *l2;
 ltree *res;

 if (len <= 0)
  return ((void*)0);
 if ((*a)->numlevel == 0)
  return ((void*)0);


 num = (*a)->numlevel - 1;


 ptr = a + 1;
 while (ptr - a < len)
 {
  if ((*ptr)->numlevel == 0)
   return ((void*)0);
  else if ((*ptr)->numlevel == 1)
   num = 0;
  else
  {
   l1 = LTREE_FIRST(*a);
   l2 = LTREE_FIRST(*ptr);
   tmp = Min(num, (*ptr)->numlevel - 1);
   num = 0;
   for (i = 0; i < tmp; i++)
   {
    if (l1->len == l2->len &&
     memcmp(l1->name, l2->name, l1->len) == 0)
     num = i + 1;
    else
     break;
    l1 = LEVEL_NEXT(l1);
    l2 = LEVEL_NEXT(l2);
   }
  }
  ptr++;
 }


 reslen = LTREE_HDRSIZE;
 l1 = LTREE_FIRST(*a);
 for (i = 0; i < num; i++)
 {
  reslen += MAXALIGN(l1->len + LEVEL_HDRSIZE);
  l1 = LEVEL_NEXT(l1);
 }


 res = (ltree *) palloc0(reslen);
 SET_VARSIZE(res, reslen);
 res->numlevel = num;

 l1 = LTREE_FIRST(*a);
 l2 = LTREE_FIRST(res);

 for (i = 0; i < num; i++)
 {
  memcpy(l2, l1, MAXALIGN(l1->len + LEVEL_HDRSIZE));
  l1 = LEVEL_NEXT(l1);
  l2 = LEVEL_NEXT(l2);
 }

 return res;
}
