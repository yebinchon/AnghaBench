
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ltree_gist ;
struct TYPE_4__ {scalar_t__ firstgood; } ;
typedef TYPE_1__ lquery ;


 int LTG_GETLNODE (int *) ;
 int LTG_GETRNODE (int *) ;
 scalar_t__ gist_tqcmp (int ,TYPE_1__*) ;

__attribute__((used)) static bool
gist_between(ltree_gist *key, lquery *query)
{
 if (query->firstgood == 0)
  return 1;

 if (gist_tqcmp(LTG_GETLNODE(key), query) > 0)
  return 0;

 if (gist_tqcmp(LTG_GETRNODE(key), query) < 0)
  return 0;

 return 1;
}
