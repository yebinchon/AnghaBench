
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef void** PBOOL ;
typedef int LPCWSTR ;
typedef void* BOOL ;


 void* FALSE ;
 int PRINT_ERROR (char*,int ) ;
 void* TRUE ;
 scalar_t__ _wcsicmp (int ,char*) ;
 void* kull_m_string_args_byName (int,int **,int ,int *,int *) ;

BOOL kull_m_string_args_bool_byName(int argc, wchar_t * argv[], LPCWSTR name, PBOOL value)
{
 BOOL status = FALSE;
 LPCWSTR szData;
 if(status = kull_m_string_args_byName(argc, argv, name, &szData, ((void*)0)))
 {
  if((_wcsicmp(szData, L"on") == 0) || (_wcsicmp(szData, L"true") == 0) || (_wcsicmp(szData, L"1") == 0))
   *value = TRUE;
  else if((_wcsicmp(szData, L"off") == 0) || (_wcsicmp(szData, L"false") == 0) || (_wcsicmp(szData, L"0") == 0))
   *value = FALSE;
  else PRINT_ERROR(L"%s argument need on/true/1 or off/false/0\n", name);
 }
 return status;
}
