
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSTEMTIME ;
typedef char* LPCSTR ;
typedef int FILETIME ;


 int ARRAY_SIZE (char*) ;
 int FileTimeToSystemTime (int const*,int *) ;
 int GetDateFormatA (int ,int ,int *,char*,char*,int ) ;
 int GetLocaleInfoA (int ,int ,char*,int ) ;
 int LOCALE_SSHORTDATE ;
 int LOCALE_SYSTEM_DEFAULT ;
 char* wine_dbg_sprintf (char*,char*) ;

__attribute__((used)) static LPCSTR filetime_to_str(const FILETIME *time)
{
    char date[80];
    char dateFmt[80];
    SYSTEMTIME sysTime;

    if (!time) return "(null)";

    GetLocaleInfoA(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, dateFmt, ARRAY_SIZE(dateFmt));
    FileTimeToSystemTime(time, &sysTime);
    GetDateFormatA(LOCALE_SYSTEM_DEFAULT, 0, &sysTime, dateFmt, date, ARRAY_SIZE(date));
    return wine_dbg_sprintf("%s", date);
}
