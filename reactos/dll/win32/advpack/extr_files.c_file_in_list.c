
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPCSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int lstrcmpiA (scalar_t__*,scalar_t__*) ;
 scalar_t__ lstrlenA (scalar_t__*) ;

__attribute__((used)) static BOOL file_in_list(LPCSTR szFile, LPCSTR szFileList)
{
    DWORD dwLen = lstrlenA(szFile);
    DWORD dwTestLen;

    while (*szFileList)
    {
        dwTestLen = lstrlenA(szFileList);

        if (dwTestLen == dwLen)
        {
            if (!lstrcmpiA(szFile, szFileList))
                return TRUE;
        }

        szFileList += dwTestLen + 1;
    }

    return FALSE;
}
