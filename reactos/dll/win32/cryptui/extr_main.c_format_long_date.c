
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SYSTEMTIME ;
typedef int FILETIME ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int FileTimeToSystemTime (int const*,int *) ;
 int GetDateFormatW (int ,int ,int *,int *,int *,int) ;
 int GetLocaleInfoW (int ,int ,int *,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int LOCALE_SLONGDATE ;
 int LOCALE_SYSTEM_DEFAULT ;

__attribute__((used)) static WCHAR *format_long_date(const FILETIME *fileTime)
{
    WCHAR dateFmt[80];
    DWORD len;
    WCHAR *buf = ((void*)0);
    SYSTEMTIME sysTime;


    GetLocaleInfoW(LOCALE_SYSTEM_DEFAULT, LOCALE_SLONGDATE, dateFmt, ARRAY_SIZE(dateFmt));
    FileTimeToSystemTime(fileTime, &sysTime);
    len = GetDateFormatW(LOCALE_SYSTEM_DEFAULT, 0, &sysTime, dateFmt, ((void*)0), 0);
    if (len)
    {
        buf = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
        if (buf)
            GetDateFormatW(LOCALE_SYSTEM_DEFAULT, 0, &sysTime, dateFmt, buf,
             len);
    }
    return buf;
}
