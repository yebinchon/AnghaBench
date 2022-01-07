
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_5__ {scalar_t__* arre; scalar_t__* arrb; } ;
struct TYPE_4__ {scalar_t__ valcrc; scalar_t__ prefix; } ;
typedef TYPE_1__ QueryOperand ;
typedef int ExecPhraseData ;
typedef TYPE_2__ CHKVAL ;



__attribute__((used)) static bool
checkcondition_arr(void *checkval, QueryOperand *val, ExecPhraseData *data)
{
 int32 *StopLow = ((CHKVAL *) checkval)->arrb;
 int32 *StopHigh = ((CHKVAL *) checkval)->arre;
 int32 *StopMiddle;






 if (val->prefix)
  return 1;

 while (StopLow < StopHigh)
 {
  StopMiddle = StopLow + (StopHigh - StopLow) / 2;
  if (*StopMiddle == val->valcrc)
   return 1;
  else if (*StopMiddle < val->valcrc)
   StopLow = StopMiddle + 1;
  else
   StopHigh = StopMiddle;
 }

 return 0;
}
