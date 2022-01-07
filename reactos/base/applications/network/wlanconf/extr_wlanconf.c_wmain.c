
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IP_ADAPTER_INDEX_MAP ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int ConInitStdStreams () ;
 int ConResPuts (int ,int ) ;
 int DoFormatMessage (int ) ;
 int GetLastError () ;
 int IDS_NO_WLAN_ADAPTER ;
 int OpenWlanAdapter (int *,int *) ;
 int ParseCmdline (int,int **) ;
 int StdOut ;
 int WlanConnect (int ) ;
 int WlanDisconnect (int ,int *) ;
 int WlanPrintCurrentStatus (int ) ;
 int WlanScan (int ) ;
 scalar_t__ bConnect ;
 scalar_t__ bDisconnect ;
 scalar_t__ bScan ;

int wmain(int argc, WCHAR *argv[])
{
    HANDLE hAdapter;
    IP_ADAPTER_INDEX_MAP IpInfo;


    ConInitStdStreams();

    if (!ParseCmdline(argc, argv))
        return -1;

    if (!OpenWlanAdapter(&hAdapter, &IpInfo))
    {
        ConResPuts(StdOut, IDS_NO_WLAN_ADAPTER);
        return -1;
    }

    if (bScan)
    {
        if (!WlanScan(hAdapter))
        {
            DoFormatMessage(GetLastError());
            CloseHandle(hAdapter);
            return -1;
        }
    }
    else if (bDisconnect)
    {
        if (!WlanDisconnect(hAdapter, &IpInfo))
        {
            DoFormatMessage(GetLastError());
            CloseHandle(hAdapter);
            return -1;
        }
    }
    else if (bConnect)
    {
        if (!WlanConnect(hAdapter))
        {
            DoFormatMessage(GetLastError());
            CloseHandle(hAdapter);
            return -1;
        }
    }
    else
    {
        if (!WlanPrintCurrentStatus(hAdapter))
        {
            DoFormatMessage(GetLastError());
            CloseHandle(hAdapter);
            return -1;
        }
    }

    CloseHandle(hAdapter);
    return 0;
}
