
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lateral_relids; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int RangeTblEntry ;
typedef int PlannerInfo ;


 int add_path (TYPE_1__*,int ) ;
 int create_namedtuplestorescan_path (int *,TYPE_1__*,int ) ;
 int set_cheapest (TYPE_1__*) ;
 int set_namedtuplestore_size_estimates (int *,TYPE_1__*) ;

__attribute__((used)) static void
set_namedtuplestore_pathlist(PlannerInfo *root, RelOptInfo *rel,
        RangeTblEntry *rte)
{
 Relids required_outer;


 set_namedtuplestore_size_estimates(root, rel);






 required_outer = rel->lateral_relids;


 add_path(rel, create_namedtuplestorescan_path(root, rel, required_outer));


 set_cheapest(rel);
}
