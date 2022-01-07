
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int total_cost; int param_info; scalar_t__ parallel_workers; void* pathkeys; int pathtarget; TYPE_2__* parent; int pathtype; int type; } ;
struct TYPE_10__ {void* pathkeys; int * param_info; int pathtarget; TYPE_2__* parent; int pathtype; int type; } ;
struct TYPE_13__ {int * bitmapquals; TYPE_1__ path; } ;
struct TYPE_12__ {TYPE_6__ path; int * bitmapqual; } ;
struct TYPE_11__ {int relid; int reltarget; } ;
typedef int Relids ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int List ;
typedef int Cost ;
typedef TYPE_3__ BitmapHeapPath ;
typedef TYPE_4__ BitmapAndPath ;


 void* NIL ;
 int T_BitmapAnd ;
 int T_BitmapAndPath ;
 int T_BitmapHeapPath ;
 int T_BitmapHeapScan ;
 int cost_bitmap_and_node (TYPE_4__*,int *) ;
 int cost_bitmap_heap_scan (TYPE_6__*,int *,TYPE_2__*,int ,int *,int ) ;
 int get_baserel_parampathinfo (int *,TYPE_2__*,int ) ;
 int get_bitmap_tree_required_outer (int *) ;
 int get_loop_count (int *,int ,int ) ;

__attribute__((used)) static Cost
bitmap_and_cost_est(PlannerInfo *root, RelOptInfo *rel, List *paths)
{
 BitmapAndPath apath;
 BitmapHeapPath bpath;
 Relids required_outer;


 apath.path.type = T_BitmapAndPath;
 apath.path.pathtype = T_BitmapAnd;
 apath.path.parent = rel;
 apath.path.pathtarget = rel->reltarget;
 apath.path.param_info = ((void*)0);
 apath.path.pathkeys = NIL;
 apath.bitmapquals = paths;
 cost_bitmap_and_node(&apath, root);


 required_outer = get_bitmap_tree_required_outer((Path *) &apath);


 bpath.path.type = T_BitmapHeapPath;
 bpath.path.pathtype = T_BitmapHeapScan;
 bpath.path.parent = rel;
 bpath.path.pathtarget = rel->reltarget;
 bpath.path.param_info = get_baserel_parampathinfo(root, rel,
               required_outer);
 bpath.path.pathkeys = NIL;
 bpath.bitmapqual = (Path *) &apath;





 bpath.path.parallel_workers = 0;


 cost_bitmap_heap_scan(&bpath.path, root, rel,
        bpath.path.param_info,
        (Path *) &apath,
        get_loop_count(root, rel->relid, required_outer));

 return bpath.path.total_cost;
}
