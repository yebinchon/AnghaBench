
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SYSTEMTIME ;
typedef int HWND ;
typedef int FILETIME ;


 int ARRAY_SIZE (int *) ;
 int FileTimeToSystemTime (int const*,int *) ;
 int GetDateFormatW (int ,int ,int *,int *,int *,int ) ;
 int GetLocaleInfoW (int ,int ,int *,int ) ;
 int LOCALE_SSHORTDATE ;
 int LOCALE_SYSTEM_DEFAULT ;
 int add_unformatted_text_to_control (int ,int *,int ) ;
 int lstrlenW (int *) ;

__attribute__((used)) static void add_date_string_to_control(HWND hwnd, const FILETIME *fileTime)
{
    WCHAR dateFmt[80];
    WCHAR date[80];
    SYSTEMTIME sysTime;

    GetLocaleInfoW(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, dateFmt, ARRAY_SIZE(dateFmt));
    FileTimeToSystemTime(fileTime, &sysTime);
    GetDateFormatW(LOCALE_SYSTEM_DEFAULT, 0, &sysTime, dateFmt, date, ARRAY_SIZE(date));
    add_unformatted_text_to_control(hwnd, date, lstrlenW(date));
}
