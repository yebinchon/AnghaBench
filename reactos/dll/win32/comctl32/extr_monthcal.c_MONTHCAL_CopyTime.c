
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wSecond; int wMinute; int wHour; } ;
typedef TYPE_1__ SYSTEMTIME ;



__attribute__((used)) static void MONTHCAL_CopyTime(const SYSTEMTIME *from, SYSTEMTIME *to)
{
  to->wHour = from->wHour;
  to->wMinute = from->wMinute;
  to->wSecond = from->wSecond;
}
