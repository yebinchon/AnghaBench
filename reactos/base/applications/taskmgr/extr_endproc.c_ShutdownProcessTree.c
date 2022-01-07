
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateToolhelp32Snapshot (int ,int ) ;
 int FALSE ;
 int ShutdownProcessTreeHelper (int ,int ,int ) ;
 int TH32CS_SNAPPROCESS ;

BOOL ShutdownProcessTree(HANDLE hParentProcess, DWORD dwParentPID)
{
    HANDLE hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    BOOL bResult;

    if (!hSnapshot)
    {
        return FALSE;
    }

    bResult = ShutdownProcessTreeHelper(hSnapshot, hParentProcess, dwParentPID);
    CloseHandle(hSnapshot);
    return bResult;
}
