
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* parent; } ;
struct TYPE_5__ {int relids; } ;
typedef TYPE_2__ Path ;
typedef int ListCell ;


 int TOTAL_COST ;
 int bms_compare (int ,int ) ;
 int compare_path_costs (TYPE_2__*,TYPE_2__*,int ) ;
 scalar_t__ lfirst (int const*) ;

__attribute__((used)) static int
append_total_cost_compare(const ListCell *a, const ListCell *b)
{
 Path *path1 = (Path *) lfirst(a);
 Path *path2 = (Path *) lfirst(b);
 int cmp;

 cmp = compare_path_costs(path1, path2, TOTAL_COST);
 if (cmp != 0)
  return -cmp;
 return bms_compare(path1->parent->relids, path2->parent->relids);
}
