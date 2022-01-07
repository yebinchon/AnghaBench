
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ PINFO ;
typedef int LPWSTR ;
typedef scalar_t__ LPSTR ;
typedef int INFO ;
typedef int DWORD ;


 int CP_ACP ;
 int DestroyConnection () ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 scalar_t__ InitConnection (scalar_t__,scalar_t__) ;
 int ReceiveData (scalar_t__) ;
 scalar_t__ SendData (scalar_t__) ;
 scalar_t__ WideCharToMultiByte (int ,int ,int ,int,scalar_t__,int,int *,int *) ;
 int wcslen (int ) ;

ULONG
GetServerTime(LPWSTR lpAddress)
{
    PINFO pInfo;
    LPSTR lpAddr;
    DWORD dwSize = wcslen(lpAddress) + 1;
    ULONG ulTime = 0;

    pInfo = (PINFO)HeapAlloc(GetProcessHeap(),
                             0,
                             sizeof(INFO));
    lpAddr = (LPSTR)HeapAlloc(GetProcessHeap(),
                              0,
                              dwSize);

    if (pInfo && lpAddr)
    {
        if (WideCharToMultiByte(CP_ACP,
                                0,
                                lpAddress,
                                -1,
                                lpAddr,
                                dwSize,
                                ((void*)0),
                                ((void*)0)))
        {
            if (InitConnection(pInfo, lpAddr))
            {
                if (SendData(pInfo))
                {
                    ulTime = ReceiveData(pInfo);
                }
            }

            DestroyConnection();
        }
    }

    if (pInfo)
        HeapFree(GetProcessHeap(), 0, pInfo);
    if (lpAddr)
        HeapFree(GetProcessHeap(), 0, lpAddr);

    return ulTime;
}
