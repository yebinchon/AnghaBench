
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int CHAR ;
typedef int BOOL ;


 int CP_ACP ;
 int * CRYPT_Alloc (int) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 int INT_MAX ;
 int SetLastError (int ) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int,int *,int *) ;

__attribute__((used)) static inline BOOL CRYPT_UnicodeToANSI(LPCWSTR wstr, LPSTR* str, int strsize)
{
 if (!wstr)
 {
  *str = ((void*)0);
  return TRUE;
 }

 if (!*str)
 {
  strsize = WideCharToMultiByte(CP_ACP, 0, wstr, -1, ((void*)0), 0, ((void*)0), ((void*)0));
  *str = CRYPT_Alloc(strsize * sizeof(CHAR));
 }
 else if (strsize < 0)
 {
  strsize = INT_MAX;
 }

 if (*str)
 {
  WideCharToMultiByte(CP_ACP, 0, wstr, -1, *str, strsize, ((void*)0), ((void*)0));
  return TRUE;
 }

 SetLastError(ERROR_NOT_ENOUGH_MEMORY);
 return FALSE;
}
