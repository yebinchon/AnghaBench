
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef scalar_t__ Selectivity ;
typedef TYPE_1__ PathClauseUsage ;
typedef scalar_t__ Cost ;


 int cost_bitmap_tree_node (int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
path_usage_comparator(const void *a, const void *b)
{
 PathClauseUsage *pa = *(PathClauseUsage *const *) a;
 PathClauseUsage *pb = *(PathClauseUsage *const *) b;
 Cost acost;
 Cost bcost;
 Selectivity aselec;
 Selectivity bselec;

 cost_bitmap_tree_node(pa->path, &acost, &aselec);
 cost_bitmap_tree_node(pb->path, &bcost, &bselec);




 if (acost < bcost)
  return -1;
 if (acost > bcost)
  return 1;

 if (aselec < bselec)
  return -1;
 if (aselec > bselec)
  return 1;

 return 0;
}
