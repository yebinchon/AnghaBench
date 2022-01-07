
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSTEMTIME ;
typedef int RECT ;
typedef int MONTHCAL_INFO ;
typedef int HDC ;


 int MONTHCAL_Circle (int const*,int ,int *) ;
 int MONTHCAL_GetDayRect (int const*,int const*,int *,int) ;

__attribute__((used)) static void MONTHCAL_CircleDay(const MONTHCAL_INFO *infoPtr, HDC hdc,
                               const SYSTEMTIME *date)
{
  RECT r;

  MONTHCAL_GetDayRect(infoPtr, date, &r, -1);
  MONTHCAL_Circle(infoPtr, hdc, &r);
}
