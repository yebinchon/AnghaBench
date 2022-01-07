
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ query_depth; scalar_t__ maxquerydepth; } ;
struct TYPE_4__ {int before_trig_done; } ;
typedef int Oid ;
typedef int CmdType ;
typedef TYPE_1__ AfterTriggersTableData ;


 int AfterTriggerEnlargeQueryState () ;
 int ERROR ;
 TYPE_1__* GetAfterTriggersTableData (int ,int ) ;
 TYPE_2__ afterTriggers ;
 int elog (int ,char*) ;

__attribute__((used)) static bool
before_stmt_triggers_fired(Oid relid, CmdType cmdType)
{
 bool result;
 AfterTriggersTableData *table;


 if (afterTriggers.query_depth < 0)
  elog(ERROR, "before_stmt_triggers_fired() called outside of query");


 if (afterTriggers.query_depth >= afterTriggers.maxquerydepth)
  AfterTriggerEnlargeQueryState();
 table = GetAfterTriggersTableData(relid, cmdType);
 result = table->before_trig_done;
 table->before_trig_done = 1;
 return result;
}
