
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int registerWidth; int nRegisters; int arrSize; double alphaMM; int hashesArr; } ;
typedef TYPE_1__ hyperLogLogState ;
typedef int Size ;


 int ERROR ;
 int elog (int ,char*) ;
 int palloc0 (int) ;

void
initHyperLogLog(hyperLogLogState *cState, uint8 bwidth)
{
 double alpha;

 if (bwidth < 4 || bwidth > 16)
  elog(ERROR, "bit width must be between 4 and 16 inclusive");

 cState->registerWidth = bwidth;
 cState->nRegisters = (Size) 1 << bwidth;
 cState->arrSize = sizeof(uint8) * cState->nRegisters + 1;





 cState->hashesArr = palloc0(cState->arrSize);







 switch (cState->nRegisters)
 {
  case 16:
   alpha = 0.673;
   break;
  case 32:
   alpha = 0.697;
   break;
  case 64:
   alpha = 0.709;
   break;
  default:
   alpha = 0.7213 / (1.0 + 1.079 / cState->nRegisters);
 }





 cState->alphaMM = alpha * cState->nRegisters * cState->nRegisters;
}
