
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int LPCLSID ;
typedef int LONG ;
typedef int CHAR ;
typedef int BOOL ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ AVIFILE_CLSIDFromString (int *,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CLASSES_ROOT ;
 scalar_t__ RegQueryValueA (int ,int *,int *,int *) ;
 scalar_t__ S_OK ;
 int * wcsrchr (int ,char) ;
 int wsprintfA (int *,char*,int *) ;

__attribute__((used)) static BOOL AVIFILE_GetFileHandlerByExtension(LPCWSTR szFile, LPCLSID lpclsid)
{
  CHAR szRegKey[25];
  CHAR szValue[100];
  LPWSTR szExt = wcsrchr(szFile, '.');
  LONG len = ARRAY_SIZE(szValue);

  if (szExt == ((void*)0))
    return FALSE;

  szExt++;

  wsprintfA(szRegKey, "AVIFile\\Extensions\\%.3ls", szExt);
  if (RegQueryValueA(HKEY_CLASSES_ROOT, szRegKey, szValue, &len) != ERROR_SUCCESS)
    return FALSE;

  return (AVIFILE_CLSIDFromString(szValue, lpclsid) == S_OK);
}
