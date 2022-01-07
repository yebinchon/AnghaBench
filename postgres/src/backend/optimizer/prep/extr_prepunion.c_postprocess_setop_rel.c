
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelOptInfo ;
typedef int PlannerInfo ;


 int UPPERREL_SETOP ;
 int create_upper_paths_hook (int *,int ,int *,int *,int *) ;
 int set_cheapest (int *) ;
 int stub1 (int *,int ,int *,int *,int *) ;

__attribute__((used)) static void
postprocess_setop_rel(PlannerInfo *root, RelOptInfo *rel)
{




 if (create_upper_paths_hook)
  (*create_upper_paths_hook) (root, UPPERREL_SETOP,
         ((void*)0), rel, ((void*)0));


 set_cheapest(rel);
}
