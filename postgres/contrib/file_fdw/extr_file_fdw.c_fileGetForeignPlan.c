
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fdw_private; } ;
struct TYPE_5__ {int relid; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Oid ;
typedef int List ;
typedef int Index ;
typedef int ForeignScan ;
typedef TYPE_2__ ForeignPath ;


 int NIL ;
 int * extract_actual_clauses (int *,int) ;
 int * make_foreignscan (int *,int *,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static ForeignScan *
fileGetForeignPlan(PlannerInfo *root,
       RelOptInfo *baserel,
       Oid foreigntableid,
       ForeignPath *best_path,
       List *tlist,
       List *scan_clauses,
       Plan *outer_plan)
{
 Index scan_relid = baserel->relid;
 scan_clauses = extract_actual_clauses(scan_clauses, 0);


 return make_foreignscan(tlist,
       scan_clauses,
       scan_relid,
       NIL,
       best_path->fdw_private,
       NIL,
       NIL,
       outer_plan);
}
