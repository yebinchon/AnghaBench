
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ LPCSTR ;
typedef int INT ;
typedef int DATETIME_INFO ;
typedef int BOOL ;


 int * Alloc (int) ;
 int CP_ACP ;
 int DATETIME_SetFormatW (int *,int *) ;
 int Free (int *) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int *,int) ;

__attribute__((used)) static BOOL
DATETIME_SetFormatA (DATETIME_INFO *infoPtr, LPCSTR lpszFormat)
{
    if (lpszFormat) {
 BOOL retval;
 INT len = MultiByteToWideChar(CP_ACP, 0, lpszFormat, -1, ((void*)0), 0);
 LPWSTR wstr = Alloc(len * sizeof(WCHAR));
 if (wstr) MultiByteToWideChar(CP_ACP, 0, lpszFormat, -1, wstr, len);
 retval = DATETIME_SetFormatW (infoPtr, wstr);
 Free (wstr);
 return retval;
    }
    else
 return DATETIME_SetFormatW (infoPtr, 0);

}
