
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* glob; } ;
struct TYPE_4__ {int paramExecTypes; } ;
typedef TYPE_2__ PlannerInfo ;


 int InvalidOid ;
 int lappend_oid (int ,int ) ;
 int list_length (int ) ;

int
assign_special_exec_param(PlannerInfo *root)
{
 int paramId = list_length(root->glob->paramExecTypes);

 root->glob->paramExecTypes = lappend_oid(root->glob->paramExecTypes,
            InvalidOid);
 return paramId;
}
