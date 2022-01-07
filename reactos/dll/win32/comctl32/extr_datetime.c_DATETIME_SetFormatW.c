
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int dwStyle; int hwndSelf; } ;
typedef int * LPCWSTR ;
typedef int DWORD ;
typedef TYPE_1__ DATETIME_INFO ;
typedef int BOOL ;


 int ARRAY_SIZE (int *) ;
 int DATETIME_UseFormat (TYPE_1__*,int *) ;
 int DTS_LONGDATEFORMAT ;
 int DTS_TIMEFORMAT ;
 int GetLocaleInfoW (int ,int ,int *,int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int LOCALE_SLONGDATE ;
 int LOCALE_SSHORTDATE ;
 int LOCALE_STIMEFORMAT ;
 int LOCALE_USER_DEFAULT ;
 int TRUE ;

__attribute__((used)) static BOOL
DATETIME_SetFormatW (DATETIME_INFO *infoPtr, LPCWSTR format)
{
    WCHAR format_buf[80];

    if (!format) {
 DWORD format_item;

 if (infoPtr->dwStyle & DTS_LONGDATEFORMAT)
     format_item = LOCALE_SLONGDATE;
 else if ((infoPtr->dwStyle & DTS_TIMEFORMAT) == DTS_TIMEFORMAT)
     format_item = LOCALE_STIMEFORMAT;
        else
     format_item = LOCALE_SSHORTDATE;
 GetLocaleInfoW(LOCALE_USER_DEFAULT, format_item, format_buf, ARRAY_SIZE(format_buf));
 format = format_buf;
    }

    DATETIME_UseFormat (infoPtr, format);
    InvalidateRect (infoPtr->hwndSelf, ((void*)0), TRUE);

    return TRUE;
}
