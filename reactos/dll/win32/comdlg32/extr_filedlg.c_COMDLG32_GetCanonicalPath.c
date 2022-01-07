
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCIDLIST_ABSOLUTE ;
typedef int * LPWSTR ;


 int COMDLG32_GetDisplayNameOf (int ,int *) ;
 int GetCurrentDirectoryW (int,int *) ;
 int MAX_PATH ;
 int PathAddBackslashW (int *) ;
 int PathCanonicalizeW (int *,int *) ;
 int PathGetDriveNumberW (int *) ;
 scalar_t__ PathIsRelativeW (int *) ;
 int TRACE (char*,int ,...) ;
 int debugstr_w (int *) ;
 int lstrcatW (int *,int *) ;
 int lstrcpyW (int *,int *) ;

void COMDLG32_GetCanonicalPath(PCIDLIST_ABSOLUTE pidlAbsCurrent,
                               LPWSTR lpstrFile, LPWSTR lpstrPathAndFile)
{
  WCHAR lpstrTemp[MAX_PATH];


  if (!COMDLG32_GetDisplayNameOf(pidlAbsCurrent, lpstrPathAndFile))
  {

    GetCurrentDirectoryW(MAX_PATH, lpstrPathAndFile);
  }
  PathAddBackslashW(lpstrPathAndFile);

  TRACE("current directory=%s, file=%s\n", debugstr_w(lpstrPathAndFile), debugstr_w(lpstrFile));


  if(PathIsRelativeW(lpstrFile))
  {
    lstrcatW(lpstrPathAndFile, lpstrFile);
  }
  else
  {

    if (PathGetDriveNumberW(lpstrFile) == -1)
      lstrcpyW(lpstrPathAndFile+2, lpstrFile);
    else
      lstrcpyW(lpstrPathAndFile, lpstrFile);
  }


  PathCanonicalizeW(lpstrTemp, lpstrPathAndFile );
  lstrcpyW(lpstrPathAndFile, lpstrTemp);
  TRACE("canon=%s\n", debugstr_w(lpstrPathAndFile));
}
