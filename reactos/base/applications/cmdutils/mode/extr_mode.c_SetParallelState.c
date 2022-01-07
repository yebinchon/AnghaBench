
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* INT ;


 int ConPrintf (int ,char*,char*,int *,int ) ;
 int DDD_REMOVE_DEFINITION ;
 int DefineDosDeviceW (int ,int *,int *) ;
 int GetLastError () ;
 int MAX_PORTNAME_LEN ;
 int ShowParallelStatus (char*) ;
 int StdErr ;
 int swprintf (int *,char*,char*) ;

int SetParallelState(INT nPortNum)
{
    WCHAR szPortName[MAX_PORTNAME_LEN];
    WCHAR szTargetPath[MAX_PORTNAME_LEN];

    swprintf(szPortName, L"LPT%d", nPortNum);
    swprintf(szTargetPath, L"COM%d", nPortNum);
    if (!DefineDosDeviceW(DDD_REMOVE_DEFINITION, szPortName, szTargetPath))
    {
        ConPrintf(StdErr, L"ERROR: SetParallelState(%d) - DefineDosDevice(%s) failed: 0x%lx\n", nPortNum, szPortName, GetLastError());
    }

    ShowParallelStatus(nPortNum);
    return 0;
}
