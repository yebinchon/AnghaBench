
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int dwStyle; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef scalar_t__ LCTYPE ;


 int GetLocaleInfoW (int ,scalar_t__,int *,unsigned int) ;
 scalar_t__ LOCALE_SABBREVDAYNAME1 ;
 scalar_t__ LOCALE_SSHORTESTDAYNAME1 ;
 int LOCALE_USER_DEFAULT ;
 int MCS_SHORTDAYSOFWEEK ;

__attribute__((used)) static int get_localized_dayname(const MONTHCAL_INFO *infoPtr, unsigned int day, WCHAR *buff, unsigned int count)
{
  LCTYPE lctype;

  if (infoPtr->dwStyle & MCS_SHORTDAYSOFWEEK)
      lctype = LOCALE_SSHORTESTDAYNAME1 + day;
  else
      lctype = LOCALE_SABBREVDAYNAME1 + day;

  return GetLocaleInfoW(LOCALE_USER_DEFAULT, lctype, buff, count);
}
