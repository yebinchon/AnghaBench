
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int parent_relid; } ;
struct TYPE_9__ {size_t simple_rel_array_size; TYPE_3__** append_rel_array; } ;
struct TYPE_8__ {scalar_t__ reloptkind; size_t relid; } ;
typedef int * Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int Index ;
typedef TYPE_3__ AppendRelInfo ;


 int Assert (int) ;
 scalar_t__ RELOPT_BASEREL ;
 scalar_t__ RELOPT_OTHER_MEMBER_REL ;
 int * bms_add_member (int *,int ) ;
 TYPE_1__* find_base_rel (TYPE_2__*,int ) ;

Relids
find_childrel_parents(PlannerInfo *root, RelOptInfo *rel)
{
 Relids result = ((void*)0);

 Assert(rel->reloptkind == RELOPT_OTHER_MEMBER_REL);
 Assert(rel->relid > 0 && rel->relid < root->simple_rel_array_size);

 do
 {
  AppendRelInfo *appinfo = root->append_rel_array[rel->relid];
  Index prelid = appinfo->parent_relid;

  result = bms_add_member(result, prelid);


  rel = find_base_rel(root, prelid);
 } while (rel->reloptkind == RELOPT_OTHER_MEMBER_REL);

 Assert(rel->reloptkind == RELOPT_BASEREL);

 return result;
}
