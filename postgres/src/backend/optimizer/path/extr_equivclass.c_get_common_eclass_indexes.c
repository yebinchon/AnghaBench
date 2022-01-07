
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** simple_rel_array; } ;
struct TYPE_5__ {int * eclass_indexes; } ;
typedef int Relids ;
typedef TYPE_2__ PlannerInfo ;
typedef int Bitmapset ;


 scalar_t__ bms_get_singleton_member (int ,int*) ;
 int * bms_int_members (int *,int *) ;
 int * get_eclass_indexes_for_relids (TYPE_2__*,int ) ;

__attribute__((used)) static Bitmapset *
get_common_eclass_indexes(PlannerInfo *root, Relids relids1, Relids relids2)
{
 Bitmapset *rel1ecs;
 Bitmapset *rel2ecs;
 int relid;

 rel1ecs = get_eclass_indexes_for_relids(root, relids1);





 if (bms_get_singleton_member(relids2, &relid))
  rel2ecs = root->simple_rel_array[relid]->eclass_indexes;
 else
  rel2ecs = get_eclass_indexes_for_relids(root, relids2);


 return bms_int_members(rel1ecs, rel2ecs);
}
