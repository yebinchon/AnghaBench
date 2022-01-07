
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSTEMTIME ;
typedef int LONG ;


 int MONTHCAL_CompareSystemTime (int *,int *) ;
 int MONTHCAL_CopyDate (int const*,int *) ;
 int st_null ;

__attribute__((used)) static LONG MONTHCAL_CompareDate(const SYSTEMTIME *first, const SYSTEMTIME *second)
{
  SYSTEMTIME st_first, st_second;

  st_first = st_second = st_null;
  MONTHCAL_CopyDate(first, &st_first);
  MONTHCAL_CopyDate(second, &st_second);

  return MONTHCAL_CompareSystemTime(&st_first, &st_second);
}
