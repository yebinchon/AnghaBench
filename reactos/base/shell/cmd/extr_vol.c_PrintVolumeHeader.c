
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;
typedef int * LPTSTR ;
typedef int INT ;
typedef int DWORD ;


 int ConOutResPrintf (int ,int ,...) ;
 int ErrorMessage (int ,int ) ;
 int GetLastError () ;
 int GetVolumeInformation (int *,char*,int,int *,int *,int *,int *,int ) ;
 int HIWORD (int ) ;
 char* LOWORD (int ) ;
 int STRING_VOL_HELP1 ;
 int STRING_VOL_HELP2 ;
 int STRING_VOL_HELP3 ;
 int _T (char*) ;

__attribute__((used)) static INT
PrintVolumeHeader (LPTSTR pszRootPath)
{
    TCHAR szVolName[80];
    DWORD dwSerialNr;


    if (!GetVolumeInformation(pszRootPath,
                             szVolName,
                             80,
                             &dwSerialNr,
                             ((void*)0),
                             ((void*)0),
                             ((void*)0),
                             0))
    {
        ErrorMessage(GetLastError (), _T(""));
        return 1;
    }


    if (szVolName[0] != '\0')
    {
        ConOutResPrintf(STRING_VOL_HELP1, pszRootPath[0],szVolName);
    }
    else
    {
        ConOutResPrintf(STRING_VOL_HELP2, pszRootPath[0]);
    }


    ConOutResPrintf(STRING_VOL_HELP3, HIWORD(dwSerialNr), LOWORD(dwSerialNr));
    return 0;
}
