
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int wDayOfWeek; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int FILETIME ;
typedef scalar_t__ BOOL ;


 int FileTimeToSystemTime (int *,TYPE_1__*) ;
 int MONTHCAL_CopyDate (TYPE_1__*,TYPE_1__*) ;
 int SystemTimeToFileTime (TYPE_1__*,int *) ;
 TYPE_1__ st_null ;

int MONTHCAL_CalculateDayOfWeek(SYSTEMTIME *date, BOOL inplace)
{
  SYSTEMTIME st = st_null;
  FILETIME ft;

  MONTHCAL_CopyDate(date, &st);

  SystemTimeToFileTime(&st, &ft);
  FileTimeToSystemTime(&ft, &st);

  if (inplace) date->wDayOfWeek = st.wDayOfWeek;

  return st.wDayOfWeek;
}
