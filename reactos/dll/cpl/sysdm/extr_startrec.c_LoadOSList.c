
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int iFreeLdrIni; int szFreeldrIni; } ;
typedef TYPE_1__* PSTARTINFO ;
typedef int LRESULT ;
typedef int HWND ;
typedef scalar_t__ HINF ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 int GetProcessHeap () ;
 scalar_t__ GetSystemDrive (int **) ;
 int HeapFree (int ,int ,int *) ;
 int INF_STYLE_OLDNT ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LoadBootSettings (scalar_t__,int ) ;
 int LoadFreeldrSettings (scalar_t__,int ) ;
 scalar_t__ PathFileExistsW (int ) ;
 int SetupCloseInfFile (scalar_t__) ;
 scalar_t__ SetupOpenInfFileW (int ,int *,int ,int *) ;
 int TRUE ;
 int wcscat (int ,char*) ;
 int wcscpy (int ,int *) ;

__attribute__((used)) static LRESULT
LoadOSList(HWND hwndDlg, PSTARTINFO pStartInfo)
{
    DWORD dwBufSize;
    WCHAR *szSystemDrive;
    HINF hInf;

    dwBufSize = GetSystemDrive(&szSystemDrive);
    if (dwBufSize == 0)
        return FALSE;

    wcscpy(pStartInfo->szFreeldrIni, szSystemDrive);
    wcscat(pStartInfo->szFreeldrIni, L"\\freeldr.ini");

    if (PathFileExistsW(pStartInfo->szFreeldrIni))
    {

        HeapFree(GetProcessHeap(), 0, szSystemDrive);

        hInf = SetupOpenInfFileW(pStartInfo->szFreeldrIni,
                                ((void*)0),
                                INF_STYLE_OLDNT,
                                ((void*)0));

        if (hInf != INVALID_HANDLE_VALUE)
        {
            LoadFreeldrSettings(hInf, hwndDlg);
            SetupCloseInfFile(hInf);
            pStartInfo->iFreeLdrIni = 1;
            return TRUE;
        }
        return FALSE;
    }


    wcscpy(pStartInfo->szFreeldrIni, szSystemDrive);
    wcscat(pStartInfo->szFreeldrIni, L"\\boot.ini");


    HeapFree(GetProcessHeap(), 0, szSystemDrive);

    if (PathFileExistsW(pStartInfo->szFreeldrIni))
    {

        hInf = SetupOpenInfFileW(pStartInfo->szFreeldrIni,
                                ((void*)0),
                                INF_STYLE_OLDNT,
                                ((void*)0));

        if (hInf != INVALID_HANDLE_VALUE)
        {
            LoadBootSettings(hInf, hwndDlg);
            SetupCloseInfFile(hInf);
            pStartInfo->iFreeLdrIni = 2;
            return TRUE;
        }

        return FALSE;
    }

    return FALSE;
}
