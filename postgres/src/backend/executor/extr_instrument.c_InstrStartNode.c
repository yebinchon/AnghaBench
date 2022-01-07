
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bufusage_start; scalar_t__ need_bufusage; int starttime; scalar_t__ need_timer; } ;
typedef TYPE_1__ Instrumentation ;


 int ERROR ;
 int INSTR_TIME_SET_CURRENT_LAZY (int ) ;
 int elog (int ,char*) ;
 int pgBufferUsage ;

void
InstrStartNode(Instrumentation *instr)
{
 if (instr->need_timer &&
  !INSTR_TIME_SET_CURRENT_LAZY(instr->starttime))
  elog(ERROR, "InstrStartNode called twice in a row");


 if (instr->need_bufusage)
  instr->bufusage_start = pgBufferUsage;
}
