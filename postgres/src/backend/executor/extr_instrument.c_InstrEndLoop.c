
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int running; double total; int nloops; scalar_t__ tuplecount; scalar_t__ firsttuple; int counter; int starttime; int ntuples; int startup; } ;
typedef TYPE_1__ Instrumentation ;


 int ERROR ;
 double INSTR_TIME_GET_DOUBLE (int ) ;
 int INSTR_TIME_IS_ZERO (int ) ;
 int INSTR_TIME_SET_ZERO (int ) ;
 int elog (int ,char*) ;

void
InstrEndLoop(Instrumentation *instr)
{
 double totaltime;


 if (!instr->running)
  return;

 if (!INSTR_TIME_IS_ZERO(instr->starttime))
  elog(ERROR, "InstrEndLoop called on running node");


 totaltime = INSTR_TIME_GET_DOUBLE(instr->counter);

 instr->startup += instr->firsttuple;
 instr->total += totaltime;
 instr->ntuples += instr->tuplecount;
 instr->nloops += 1;


 instr->running = 0;
 INSTR_TIME_SET_ZERO(instr->starttime);
 INSTR_TIME_SET_ZERO(instr->counter);
 instr->firsttuple = 0;
 instr->tuplecount = 0;
}
