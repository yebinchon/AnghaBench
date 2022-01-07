
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSTEMTIME ;


 int MONTHCAL_GetMonth (int *,int) ;

__attribute__((used)) static inline void MONTHCAL_GetNextMonth(SYSTEMTIME *date)
{
  MONTHCAL_GetMonth(date, 1);
}
