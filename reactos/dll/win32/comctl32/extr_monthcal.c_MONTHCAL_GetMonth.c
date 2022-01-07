
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wMonth; int wDay; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int INT ;


 int MONTHCAL_CalculateDayOfWeek (TYPE_1__*,int ) ;
 int MONTHCAL_MonthLength (int,int ) ;
 int TRUE ;

__attribute__((used)) static inline void MONTHCAL_GetMonth(SYSTEMTIME *date, INT months)
{
  INT length, m = date->wMonth + months;

  date->wYear += m > 0 ? (m - 1) / 12 : m / 12 - 1;
  date->wMonth = m > 0 ? (m - 1) % 12 + 1 : 12 + m % 12;

  length = MONTHCAL_MonthLength(date->wMonth, date->wYear);
  if(date->wDay > length) date->wDay = length;
  MONTHCAL_CalculateDayOfWeek(date, TRUE);
}
