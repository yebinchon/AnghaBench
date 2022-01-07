
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dummy_view; } ;
typedef TYPE_1__ TableInfo ;
struct TYPE_10__ {int dumpId; } ;
struct TYPE_9__ {int separate; } ;
typedef TYPE_2__ RuleInfo ;
typedef TYPE_3__ DumpableObject ;


 int addObjectDependency (TYPE_3__*,int ) ;
 int postDataBoundId ;
 int removeObjectDependency (TYPE_3__*,int ) ;

__attribute__((used)) static void
repairViewRuleMultiLoop(DumpableObject *viewobj,
      DumpableObject *ruleobj)
{
 TableInfo *viewinfo = (TableInfo *) viewobj;
 RuleInfo *ruleinfo = (RuleInfo *) ruleobj;


 removeObjectDependency(viewobj, ruleobj->dumpId);

 viewinfo->dummy_view = 1;

 ruleinfo->separate = 1;

 addObjectDependency(ruleobj, viewobj->dumpId);

 addObjectDependency(ruleobj, postDataBoundId);
}
