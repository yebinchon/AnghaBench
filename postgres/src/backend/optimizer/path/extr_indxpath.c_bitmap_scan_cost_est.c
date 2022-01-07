
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int total_cost; int param_info; scalar_t__ parallel_workers; int pathkeys; int pathtarget; TYPE_1__* parent; int pathtype; int type; } ;
struct TYPE_8__ {TYPE_4__ path; int * bitmapqual; } ;
struct TYPE_7__ {int relid; int reltarget; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int Cost ;
typedef TYPE_2__ BitmapHeapPath ;


 int NIL ;
 int T_BitmapHeapPath ;
 int T_BitmapHeapScan ;
 int cost_bitmap_heap_scan (TYPE_4__*,int *,TYPE_1__*,int ,int *,int ) ;
 int get_baserel_parampathinfo (int *,TYPE_1__*,int ) ;
 int get_bitmap_tree_required_outer (int *) ;
 int get_loop_count (int *,int ,int ) ;

__attribute__((used)) static Cost
bitmap_scan_cost_est(PlannerInfo *root, RelOptInfo *rel, Path *ipath)
{
 BitmapHeapPath bpath;
 Relids required_outer;


 required_outer = get_bitmap_tree_required_outer(ipath);


 bpath.path.type = T_BitmapHeapPath;
 bpath.path.pathtype = T_BitmapHeapScan;
 bpath.path.parent = rel;
 bpath.path.pathtarget = rel->reltarget;
 bpath.path.param_info = get_baserel_parampathinfo(root, rel,
               required_outer);
 bpath.path.pathkeys = NIL;
 bpath.bitmapqual = ipath;





 bpath.path.parallel_workers = 0;
 cost_bitmap_heap_scan(&bpath.path, root, rel,
        bpath.path.param_info,
        ipath,
        get_loop_count(root, rel->relid, required_outer));

 return bpath.path.total_cost;
}
