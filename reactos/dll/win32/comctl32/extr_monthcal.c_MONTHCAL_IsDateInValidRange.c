
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int wMonth; int wYear; } ;
struct TYPE_10__ {int rangeValid; TYPE_1__ minDate; TYPE_1__ maxDate; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int BOOL ;


 int GDTR_MAX ;
 int GDTR_MIN ;
 int MONTHCAL_CompareSystemTime (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__ max_allowed_date ;
 TYPE_1__ min_allowed_date ;

__attribute__((used)) static BOOL MONTHCAL_IsDateInValidRange(const MONTHCAL_INFO *infoPtr,
                                        SYSTEMTIME *date, BOOL fix)
{
  const SYSTEMTIME *fix_st = ((void*)0);

  if(MONTHCAL_CompareSystemTime(date, &max_allowed_date) == 1) {
     fix_st = &max_allowed_date;
  }
  else if(MONTHCAL_CompareSystemTime(date, &min_allowed_date) == -1) {
     fix_st = &min_allowed_date;
  }
  else {
     if(infoPtr->rangeValid & GDTR_MAX) {
        if((MONTHCAL_CompareSystemTime(date, &infoPtr->maxDate) == 1)) {
           fix_st = &infoPtr->maxDate;
        }
     }

     if(infoPtr->rangeValid & GDTR_MIN) {
        if((MONTHCAL_CompareSystemTime(date, &infoPtr->minDate) == -1)) {
           fix_st = &infoPtr->minDate;
        }
     }
  }

  if (fix && fix_st) {
    date->wYear = fix_st->wYear;
    date->wMonth = fix_st->wMonth;
  }

  return !fix_st;
}
