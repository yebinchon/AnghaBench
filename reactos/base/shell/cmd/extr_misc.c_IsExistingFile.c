
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributes (int ) ;

BOOL IsExistingFile (LPCTSTR pszPath)
{
    DWORD attr = GetFileAttributes (pszPath);
    return (attr != 0xFFFFFFFF && (! (attr & FILE_ATTRIBUTE_DIRECTORY)) );
}
