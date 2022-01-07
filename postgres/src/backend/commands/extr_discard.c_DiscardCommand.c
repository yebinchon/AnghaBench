
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int target; } ;
typedef TYPE_1__ DiscardStmt ;






 int DiscardAll (int) ;
 int ERROR ;
 int ResetPlanCache () ;
 int ResetSequenceCaches () ;
 int ResetTempTableNamespace () ;
 int elog (int ,char*,int) ;

void
DiscardCommand(DiscardStmt *stmt, bool isTopLevel)
{
 switch (stmt->target)
 {
  case 131:
   DiscardAll(isTopLevel);
   break;

  case 130:
   ResetPlanCache();
   break;

  case 129:
   ResetSequenceCaches();
   break;

  case 128:
   ResetTempTableNamespace();
   break;

  default:
   elog(ERROR, "unrecognized DISCARD target: %d", stmt->target);
 }
}
