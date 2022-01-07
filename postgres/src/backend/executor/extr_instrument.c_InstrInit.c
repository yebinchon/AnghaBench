
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int need_bufusage; int need_timer; } ;
typedef TYPE_1__ Instrumentation ;


 int INSTRUMENT_BUFFERS ;
 int INSTRUMENT_TIMER ;
 int memset (TYPE_1__*,int ,int) ;

void
InstrInit(Instrumentation *instr, int instrument_options)
{
 memset(instr, 0, sizeof(Instrumentation));
 instr->need_bufusage = (instrument_options & INSTRUMENT_BUFFERS) != 0;
 instr->need_timer = (instrument_options & INSTRUMENT_TIMER) != 0;
}
