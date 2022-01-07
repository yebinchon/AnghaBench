
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ consider_parallel; int * lateral_relids; } ;
typedef int * Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int RangeTblEntry ;
typedef int PlannerInfo ;


 int add_path (TYPE_1__*,int ) ;
 int create_index_paths (int *,TYPE_1__*) ;
 int create_plain_partial_paths (int *,TYPE_1__*) ;
 int create_seqscan_path (int *,TYPE_1__*,int *,int ) ;
 int create_tidscan_paths (int *,TYPE_1__*) ;

__attribute__((used)) static void
set_plain_rel_pathlist(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{
 Relids required_outer;






 required_outer = rel->lateral_relids;


 add_path(rel, create_seqscan_path(root, rel, required_outer, 0));


 if (rel->consider_parallel && required_outer == ((void*)0))
  create_plain_partial_paths(root, rel);


 create_index_paths(root, rel);


 create_tidscan_paths(root, rel);
}
