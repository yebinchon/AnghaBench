
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rangeValid; int minDate; int maxDate; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;


 int TRACE (char*,int *) ;

__attribute__((used)) static LRESULT
MONTHCAL_GetRange(const MONTHCAL_INFO *infoPtr, SYSTEMTIME *range)
{
  TRACE("%p\n", range);

  if (!range) return 0;

  range[1] = infoPtr->maxDate;
  range[0] = infoPtr->minDate;

  return infoPtr->rangeValid;
}
