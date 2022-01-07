
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_3__ {double tuplecount; int running; int counter; int firsttuple; int bufusage_start; int bufusage; scalar_t__ need_bufusage; int starttime; scalar_t__ need_timer; } ;
typedef TYPE_1__ Instrumentation ;


 int BufferUsageAccumDiff (int *,int *,int *) ;
 int ERROR ;
 int INSTR_TIME_ACCUM_DIFF (int ,int ,int ) ;
 int INSTR_TIME_GET_DOUBLE (int ) ;
 scalar_t__ INSTR_TIME_IS_ZERO (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SET_ZERO (int ) ;
 int elog (int ,char*) ;
 int pgBufferUsage ;

void
InstrStopNode(Instrumentation *instr, double nTuples)
{
 instr_time endtime;


 instr->tuplecount += nTuples;


 if (instr->need_timer)
 {
  if (INSTR_TIME_IS_ZERO(instr->starttime))
   elog(ERROR, "InstrStopNode called without start");

  INSTR_TIME_SET_CURRENT(endtime);
  INSTR_TIME_ACCUM_DIFF(instr->counter, endtime, instr->starttime);

  INSTR_TIME_SET_ZERO(instr->starttime);
 }


 if (instr->need_bufusage)
  BufferUsageAccumDiff(&instr->bufusage,
        &pgBufferUsage, &instr->bufusage_start);


 if (!instr->running)
 {
  instr->running = 1;
  instr->firsttuple = INSTR_TIME_GET_DOUBLE(instr->counter);
 }
}
