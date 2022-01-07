
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int LPCTSTR ;
typedef int LPBYTE ;
typedef int ENUM_SERVICE_STATUS_PROCESS ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ EnumServicesStatusEx (int *,int ,int ,int ,int ,int ,int *,int *,int *,int ) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int ReportLastError () ;
 int SC_ENUM_PROCESS_INFO ;
 int SC_MANAGER_ENUMERATE_SERVICE ;

__attribute__((used)) static
DWORD
EnumServices(ENUM_SERVICE_STATUS_PROCESS **pServiceStatus,
             DWORD dwServiceType,
             DWORD dwServiceState,
             DWORD dwBufferSize,
             DWORD dwResumeIndex,
             LPCTSTR pszGroupName)
{
    SC_HANDLE hSCManager;
    DWORD BytesNeeded = 0;
    DWORD ResumeHandle = dwResumeIndex;
    DWORD NumServices = 0;
    BOOL Ret;

    hSCManager = OpenSCManager(((void*)0),
                               ((void*)0),
                               SC_MANAGER_ENUMERATE_SERVICE);
    if (hSCManager == ((void*)0))
    {
        ReportLastError();
        return 0;
    }

    if (dwBufferSize == 0)
    {
        Ret = EnumServicesStatusEx(hSCManager,
                                   SC_ENUM_PROCESS_INFO,
                                   dwServiceType,
                                   dwServiceState,
                                   (LPBYTE)*pServiceStatus,
                                   dwBufferSize,
                                   &BytesNeeded,
                                   &NumServices,
                                   &ResumeHandle,
                                   pszGroupName);
        if ((Ret == 0) && (GetLastError() != ERROR_MORE_DATA))
        {
            ReportLastError();
            return 0;
        }

        dwBufferSize = BytesNeeded;
    }

    *pServiceStatus = (ENUM_SERVICE_STATUS_PROCESS *)
                      HeapAlloc(GetProcessHeap(),
                                0,
                                dwBufferSize);
    if (*pServiceStatus != ((void*)0))
    {
        if (EnumServicesStatusEx(hSCManager,
                                 SC_ENUM_PROCESS_INFO,
                                 dwServiceType,
                                 dwServiceState,
                                 (LPBYTE)*pServiceStatus,
                                 dwBufferSize,
                                 &BytesNeeded,
                                 &NumServices,
                                 &ResumeHandle,
                                 pszGroupName))
        {
            CloseServiceHandle(hSCManager);
            return NumServices;
        }
    }

    ReportLastError();
    if (*pServiceStatus)
        HeapFree(GetProcessHeap(), 0, *pServiceStatus);

    CloseServiceHandle(hSCManager);

    return NumServices;
}
