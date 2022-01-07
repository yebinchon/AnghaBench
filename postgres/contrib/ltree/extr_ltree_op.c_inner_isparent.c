
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int name; } ;
typedef TYPE_1__ ltree_level ;
struct TYPE_10__ {int numlevel; } ;
typedef TYPE_2__ ltree ;


 TYPE_1__* LEVEL_NEXT (TYPE_1__*) ;
 TYPE_1__* LTREE_FIRST (TYPE_2__ const*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

bool
inner_isparent(const ltree *c, const ltree *p)
{
 ltree_level *cl = LTREE_FIRST(c);
 ltree_level *pl = LTREE_FIRST(p);
 int pn = p->numlevel;

 if (pn > c->numlevel)
  return 0;

 while (pn > 0)
 {
  if (cl->len != pl->len)
   return 0;
  if (memcmp(cl->name, pl->name, cl->len) != 0)
   return 0;

  pn--;
  cl = LEVEL_NEXT(cl);
  pl = LEVEL_NEXT(pl);
 }
 return 1;
}
