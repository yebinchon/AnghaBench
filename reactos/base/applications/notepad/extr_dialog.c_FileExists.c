
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WIN32_FIND_DATA ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (int ,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;

BOOL FileExists(LPCTSTR szFilename)
{
    WIN32_FIND_DATA entry;
    HANDLE hFile;

    hFile = FindFirstFile(szFilename, &entry);
    FindClose(hFile);

    return (hFile != INVALID_HANDLE_VALUE);
}
