
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wDayOfWeek; int wDay; int wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;



__attribute__((used)) static void MONTHCAL_CopyDate(const SYSTEMTIME *from, SYSTEMTIME *to)
{
  to->wYear = from->wYear;
  to->wMonth = from->wMonth;
  to->wDay = from->wDay;
  to->wDayOfWeek = from->wDayOfWeek;
}
