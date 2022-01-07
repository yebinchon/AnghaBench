
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* join_rel; } ;
struct TYPE_8__ {scalar_t__ join_rel_hash; int join_rel_list; } ;
struct TYPE_7__ {int relids; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ JoinHashEntry ;


 int Assert (int) ;
 int HASH_ENTER ;
 scalar_t__ hash_search (scalar_t__,int *,int ,int*) ;
 int lappend (int ,TYPE_1__*) ;

__attribute__((used)) static void
add_join_rel(PlannerInfo *root, RelOptInfo *joinrel)
{

 root->join_rel_list = lappend(root->join_rel_list, joinrel);


 if (root->join_rel_hash)
 {
  JoinHashEntry *hentry;
  bool found;

  hentry = (JoinHashEntry *) hash_search(root->join_rel_hash,
              &(joinrel->relids),
              HASH_ENTER,
              &found);
  Assert(!found);
  hentry->join_rel = joinrel;
 }
}
