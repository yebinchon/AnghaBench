
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int WCHAR ;
typedef int LPWSTR ;
typedef int HINSTANCE ;
typedef int DWORD ;


 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessageW (int,int *,int ,int,int ,int,int *) ;
 int LoadStringW (int ,int,int ,int) ;

DWORD
FormatString(
 DWORD dwFlags,
 HINSTANCE hInstance,
 DWORD dwStringId,
 DWORD dwLanguageId,
 LPWSTR lpBuffer,
 DWORD nSize,
 va_list* Arguments
)
{
 DWORD dwRet;
 int len;
 WCHAR Buffer[1000];

 len = LoadStringW(hInstance, dwStringId, (LPWSTR)Buffer, 1000);

 if (len)
 {
  dwFlags |= FORMAT_MESSAGE_FROM_STRING;
  dwFlags &= ~(FORMAT_MESSAGE_FROM_HMODULE | FORMAT_MESSAGE_FROM_SYSTEM);
  dwRet = FormatMessageW(dwFlags, Buffer, 0, dwLanguageId, lpBuffer, nSize, Arguments);
  return dwRet;
 }
 return 0;
}
