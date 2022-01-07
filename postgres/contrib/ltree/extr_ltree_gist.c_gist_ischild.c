
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ltree_gist ;
struct TYPE_7__ {scalar_t__ numlevel; } ;
typedef TYPE_1__ ltree ;


 int LTG_GETLNODE (int *) ;
 int LTG_GETRNODE (int *) ;
 TYPE_1__* copy_ltree (int ) ;
 scalar_t__ ltree_compare (TYPE_1__*,TYPE_1__*) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static bool
gist_ischild(ltree_gist *key, ltree *query)
{
 ltree *left = copy_ltree(LTG_GETLNODE(key));
 ltree *right = copy_ltree(LTG_GETRNODE(key));
 bool res = 1;

 if (left->numlevel > query->numlevel)
  left->numlevel = query->numlevel;

 if (ltree_compare(query, left) < 0)
  res = 0;

 if (right->numlevel > query->numlevel)
  right->numlevel = query->numlevel;

 if (res && ltree_compare(query, right) > 0)
  res = 0;

 pfree(left);
 pfree(right);

 return res;
}
