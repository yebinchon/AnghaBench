
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int CSTR_EQUAL ;
 int CompareStringW (int ,int ,int ,int,int *,int) ;
 int FALSE ;
 int GetProcessHeap () ;
 int GetThreadLocale () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int NORM_IGNORECASE ;
 int lstrlenW (int ) ;

__attribute__((used)) static BOOL msi_strprefix(LPCWSTR str1, LPCSTR str2)
{
 DWORD len, ret;
 LPWSTR strW;

 len = MultiByteToWideChar( CP_ACP, 0, str2, -1, ((void*)0), 0);
 if( !len )
  return FALSE;
 if( lstrlenW(str1) < (len-1) )
  return FALSE;
 strW = HeapAlloc(GetProcessHeap(), 0, sizeof(WCHAR)*len);
 MultiByteToWideChar( CP_ACP, 0, str2, -1, strW, len);
 ret = CompareStringW(GetThreadLocale(), NORM_IGNORECASE, str1, len-1, strW, len-1);
 HeapFree(GetProcessHeap(), 0, strW);
 return (ret == CSTR_EQUAL);
}
