
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef int BOOL ;


 int * Alloc (int) ;
 int CP_ACP ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int TRACE (char*,char*) ;
 char* debugstr_w (int *) ;
 scalar_t__ is_text (scalar_t__) ;

__attribute__((used)) static inline LPWSTR textdupTtoW(LPCWSTR text, BOOL isW)
{
    LPWSTR wstr = (LPWSTR)text;

    if (!isW && is_text(text))
    {
 INT len = MultiByteToWideChar(CP_ACP, 0, (LPCSTR)text, -1, ((void*)0), 0);
 wstr = Alloc(len * sizeof(WCHAR));
 if (wstr) MultiByteToWideChar(CP_ACP, 0, (LPCSTR)text, -1, wstr, len);
    }
    TRACE("   wstr=%s\n", text == LPSTR_TEXTCALLBACKW ? "(callback)" : debugstr_w(wstr));
    return wstr;
}
