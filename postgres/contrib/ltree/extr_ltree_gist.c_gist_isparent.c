
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ltree_gist ;
struct TYPE_4__ {int numlevel; } ;
typedef TYPE_1__ ltree ;
typedef void* int32 ;


 int LTG_GETLNODE (int *) ;
 int LTG_GETRNODE (int *) ;
 scalar_t__ ltree_compare (TYPE_1__*,int ) ;

__attribute__((used)) static bool
gist_isparent(ltree_gist *key, ltree *query)
{
 int32 numlevel = query->numlevel;
 int i;

 for (i = query->numlevel; i >= 0; i--)
 {
  query->numlevel = i;
  if (ltree_compare(query, LTG_GETLNODE(key)) >= 0 && ltree_compare(query, LTG_GETRNODE(key)) <= 0)
  {
   query->numlevel = numlevel;
   return 1;
  }
 }

 query->numlevel = numlevel;
 return 0;
}
