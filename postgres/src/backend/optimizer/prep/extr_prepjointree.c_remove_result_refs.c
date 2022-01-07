
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ parse; TYPE_1__* glob; } ;
struct TYPE_4__ {scalar_t__ lastPHId; } ;
typedef int Relids ;
typedef TYPE_2__ PlannerInfo ;
typedef int Node ;


 int Assert (int) ;
 int bms_is_empty (int ) ;
 int get_relids_in_jointree (int *,int) ;
 int substitute_phv_relids (int *,int,int ) ;

__attribute__((used)) static void
remove_result_refs(PlannerInfo *root, int varno, Node *newjtloc)
{


 if (root->glob->lastPHId != 0)
 {
  Relids subrelids;

  subrelids = get_relids_in_jointree(newjtloc, 0);
  Assert(!bms_is_empty(subrelids));
  substitute_phv_relids((Node *) root->parse, varno, subrelids);
 }





}
