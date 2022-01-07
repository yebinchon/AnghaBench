
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSTEMTIME ;
typedef int LONG ;
typedef int FILETIME ;


 int CompareFileTime (int *,int *) ;
 int SystemTimeToFileTime (int const*,int *) ;

LONG MONTHCAL_CompareSystemTime(const SYSTEMTIME *first, const SYSTEMTIME *second)
{
  FILETIME ft_first, ft_second;

  SystemTimeToFileTime(first, &ft_first);
  SystemTimeToFileTime(second, &ft_second);

  return CompareFileTime(&ft_first, &ft_second);
}
