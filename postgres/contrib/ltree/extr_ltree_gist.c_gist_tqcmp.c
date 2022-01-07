
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ len; int name; } ;
typedef TYPE_1__ ltree_level ;
struct TYPE_14__ {int numlevel; } ;
typedef TYPE_2__ ltree ;
struct TYPE_15__ {scalar_t__ len; int name; } ;
typedef TYPE_3__ lquery_variant ;
typedef int lquery_level ;
struct TYPE_16__ {int firstgood; } ;
typedef TYPE_4__ lquery ;


 TYPE_1__* LEVEL_NEXT (TYPE_1__*) ;
 TYPE_3__* LQL_FIRST (int *) ;
 int * LQL_NEXT (int *) ;
 int * LQUERY_FIRST (TYPE_4__*) ;
 TYPE_1__* LTREE_FIRST (TYPE_2__*) ;
 int Min (scalar_t__,scalar_t__) ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int
gist_tqcmp(ltree *t, lquery *q)
{
 ltree_level *al = LTREE_FIRST(t);
 lquery_level *ql = LQUERY_FIRST(q);
 lquery_variant *bl;
 int an = t->numlevel;
 int bn = q->firstgood;
 int res = 0;

 while (an > 0 && bn > 0)
 {
  bl = LQL_FIRST(ql);
  if ((res = memcmp(al->name, bl->name, Min(al->len, bl->len))) == 0)
  {
   if (al->len != bl->len)
    return al->len - bl->len;
  }
  else
   return res;
  an--;
  bn--;
  al = LEVEL_NEXT(al);
  ql = LQL_NEXT(ql);
 }

 return Min(t->numlevel, q->firstgood) - q->firstgood;
}
