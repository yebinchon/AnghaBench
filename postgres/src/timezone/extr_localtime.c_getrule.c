
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {int r_time; int r_day; int r_type; int r_week; int r_mon; } ;


 int DAYSPERLYEAR ;
 int DAYSPERNYEAR ;
 int DAYSPERWEEK ;
 int DAY_OF_YEAR ;
 int JULIAN_DAY ;
 int MONSPERYEAR ;
 int MONTH_NTH_DAY_OF_WEEK ;
 int SECSPERHOUR ;
 char* getnum (char const*,int *,int,int) ;
 char* getoffset (char const*,int*) ;
 scalar_t__ is_digit (char const) ;

__attribute__((used)) static const char *
getrule(const char *strp, struct rule *const rulep)
{
 if (*strp == 'J')
 {



  rulep->r_type = JULIAN_DAY;
  ++strp;
  strp = getnum(strp, &rulep->r_day, 1, DAYSPERNYEAR);
 }
 else if (*strp == 'M')
 {



  rulep->r_type = MONTH_NTH_DAY_OF_WEEK;
  ++strp;
  strp = getnum(strp, &rulep->r_mon, 1, MONSPERYEAR);
  if (strp == ((void*)0))
   return ((void*)0);
  if (*strp++ != '.')
   return ((void*)0);
  strp = getnum(strp, &rulep->r_week, 1, 5);
  if (strp == ((void*)0))
   return ((void*)0);
  if (*strp++ != '.')
   return ((void*)0);
  strp = getnum(strp, &rulep->r_day, 0, DAYSPERWEEK - 1);
 }
 else if (is_digit(*strp))
 {



  rulep->r_type = DAY_OF_YEAR;
  strp = getnum(strp, &rulep->r_day, 0, DAYSPERLYEAR - 1);
 }
 else
  return ((void*)0);
 if (strp == ((void*)0))
  return ((void*)0);
 if (*strp == '/')
 {



  ++strp;
  strp = getoffset(strp, &rulep->r_time);
 }
 else
  rulep->r_time = 2 * SECSPERHOUR;
 return strp;
}
