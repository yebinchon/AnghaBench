
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeZoneAbbrevTable ;


 int InstallTimeZoneAbbrevs (int *) ;

__attribute__((used)) static void
assign_timezone_abbreviations(const char *newval, void *extra)
{

 if (!extra)
  return;

 InstallTimeZoneAbbrevs((TimeZoneAbbrevTable *) extra);
}
