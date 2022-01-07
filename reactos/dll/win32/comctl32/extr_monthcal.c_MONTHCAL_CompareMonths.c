
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int wDay; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int LONG ;


 int MONTHCAL_CompareSystemTime (TYPE_1__*,TYPE_1__*) ;
 int MONTHCAL_CopyDate (TYPE_1__ const*,TYPE_1__*) ;
 TYPE_1__ st_null ;

__attribute__((used)) static LONG MONTHCAL_CompareMonths(const SYSTEMTIME *first, const SYSTEMTIME *second)
{
  SYSTEMTIME st_first, st_second;

  st_first = st_second = st_null;
  MONTHCAL_CopyDate(first, &st_first);
  MONTHCAL_CopyDate(second, &st_second);
  st_first.wDay = st_second.wDay = 1;

  return MONTHCAL_CompareSystemTime(&st_first, &st_second);
}
