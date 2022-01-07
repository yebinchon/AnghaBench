
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * PWSTR ;
typedef char* LPCWSTR ;
typedef int DWORD ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int RtlCopyMemory (int *,char*,int) ;
 int wcslen (char*) ;

PWSTR kuhl_m_crypto_l_sc_containerFromReader(LPCWSTR reader)
{
 PWSTR result = ((void*)0);
 DWORD szReader = (DWORD) wcslen(reader);
 if(result = (PWSTR) LocalAlloc(LPTR, (szReader + 6) * sizeof(wchar_t)))
 {
  RtlCopyMemory(result, L"\\\\.\\", 4 * sizeof(wchar_t));
  RtlCopyMemory(result + 4, reader, szReader * sizeof(wchar_t));
  RtlCopyMemory(result + 4 + szReader, L"\\", 1 * sizeof(wchar_t));
 }
 return result;
}
