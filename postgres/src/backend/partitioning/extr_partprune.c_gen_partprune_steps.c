
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int target; TYPE_1__* rel; } ;
struct TYPE_7__ {scalar_t__ partition_qual; int boundinfo; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PartClauseTarget ;
typedef int List ;
typedef TYPE_2__ GeneratePruningStepsContext ;


 int gen_partprune_steps_internal (TYPE_2__*,int *) ;
 int * list_concat_copy (int *,scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ partition_bound_has_default (int ) ;

__attribute__((used)) static void
gen_partprune_steps(RelOptInfo *rel, List *clauses, PartClauseTarget target,
     GeneratePruningStepsContext *context)
{

 memset(context, 0, sizeof(GeneratePruningStepsContext));
 context->rel = rel;
 context->target = target;
 if (partition_bound_has_default(rel->boundinfo) && rel->partition_qual)
 {

  clauses = list_concat_copy(clauses, rel->partition_qual);
 }


 (void) gen_partprune_steps_internal(context, clauses);
}
