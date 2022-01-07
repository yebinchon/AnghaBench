
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * joininfo; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int List ;


 int * NIL ;
 int * subbuild_joinrel_joinlist (TYPE_1__*,int *,int *) ;

__attribute__((used)) static void
build_joinrel_joinlist(RelOptInfo *joinrel,
        RelOptInfo *outer_rel,
        RelOptInfo *inner_rel)
{
 List *result;






 result = subbuild_joinrel_joinlist(joinrel, outer_rel->joininfo, NIL);
 result = subbuild_joinrel_joinlist(joinrel, inner_rel->joininfo, result);

 joinrel->joininfo = result;
}
