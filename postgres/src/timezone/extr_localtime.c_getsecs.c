
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int DAYSPERWEEK ;
 int HOURSPERDAY ;
 int MINSPERHOUR ;
 scalar_t__ SECSPERHOUR ;
 int SECSPERMIN ;
 char* getnum (char const*,int*,int ,int) ;

__attribute__((used)) static const char *
getsecs(const char *strp, int32 *const secsp)
{
 int num;






 strp = getnum(strp, &num, 0, HOURSPERDAY * DAYSPERWEEK - 1);
 if (strp == ((void*)0))
  return ((void*)0);
 *secsp = num * (int32) SECSPERHOUR;
 if (*strp == ':')
 {
  ++strp;
  strp = getnum(strp, &num, 0, MINSPERHOUR - 1);
  if (strp == ((void*)0))
   return ((void*)0);
  *secsp += num * SECSPERMIN;
  if (*strp == ':')
  {
   ++strp;

   strp = getnum(strp, &num, 0, SECSPERMIN);
   if (strp == ((void*)0))
    return ((void*)0);
   *secsp += num;
  }
 }
 return strp;
}
