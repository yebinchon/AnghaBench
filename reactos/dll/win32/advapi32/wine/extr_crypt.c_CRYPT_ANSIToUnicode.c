
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCSTR ;
typedef int BOOL ;


 int CP_ACP ;
 int * CRYPT_Alloc (unsigned int) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 unsigned int MultiByteToWideChar (int ,int ,int ,int,int *,unsigned int) ;
 int SetLastError (int ) ;
 int TRUE ;
 unsigned int min (unsigned int,int) ;

__attribute__((used)) static inline BOOL CRYPT_ANSIToUnicode(LPCSTR str, LPWSTR* wstr, int wstrsize)
{
 unsigned int wcount;

 if (!str)
 {
  *wstr = ((void*)0);
  return TRUE;
 }
 wcount = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
 if (wstrsize == -1)
  *wstr = CRYPT_Alloc(wcount * sizeof(WCHAR));
 else
  wcount = min( wcount, wstrsize/sizeof(WCHAR) );
 if (*wstr)
 {
  MultiByteToWideChar(CP_ACP, 0, str, -1, *wstr, wcount);
  return TRUE;
 }
 SetLastError(ERROR_NOT_ENOUGH_MEMORY);
 return FALSE;
}
