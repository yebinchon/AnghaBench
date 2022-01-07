
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PWSTR ;
typedef char* INT ;


 int ARRAYSIZE (int *) ;
 int ConPrintf (int ,char*,int *,int ) ;
 int ConPuts (int ,char*) ;
 int ConResPrintf (int ,int ,int *,...) ;
 int ConResPuts (int ,int ) ;
 int GetLastError () ;
 int IDS_DEVICE_STATUS_HEADER ;
 int IDS_ERROR_QUERY_DEVICES_FORM ;
 int IDS_PRINTER_OUTPUT_NOT_REROUTED ;
 int IDS_PRINTER_OUTPUT_REROUTED_SERIAL ;
 int MAX_PORTNAME_LEN ;
 scalar_t__ QueryDosDeviceW (int *,int *,int ) ;
 int StdErr ;
 int StdOut ;
 int UnderlinedResPrintf (int ,int ,int *) ;
 scalar_t__ _wcsicmp (int *,int *) ;
 int swprintf (int *,char*,char*) ;
 int * wcsrchr (int *,int) ;

int ShowParallelStatus(INT nPortNum)
{
    WCHAR buffer[250];
    WCHAR szPortName[MAX_PORTNAME_LEN];

    swprintf(szPortName, L"LPT%d", nPortNum);

    ConPuts(StdOut, L"\n");
    UnderlinedResPrintf(StdOut, IDS_DEVICE_STATUS_HEADER, szPortName);
    ConPuts(StdOut, L"\n");

    if (QueryDosDeviceW(szPortName, buffer, ARRAYSIZE(buffer)))
    {
        PWSTR ptr = wcsrchr(buffer, L'\\');
        if (ptr != ((void*)0))
        {
            if (_wcsicmp(szPortName, ++ptr) == 0)
                ConResPuts(StdOut, IDS_PRINTER_OUTPUT_NOT_REROUTED);
            else
                ConResPrintf(StdOut, IDS_PRINTER_OUTPUT_REROUTED_SERIAL, ptr);

            return 0;
        }
        else
        {
            ConResPrintf(StdErr, IDS_ERROR_QUERY_DEVICES_FORM, szPortName, buffer);
        }
    }
    else
    {
        ConPrintf(StdErr, L"ERROR: QueryDosDeviceW(%s) failed: 0x%lx\n", szPortName, GetLastError());
    }
    ConPuts(StdOut, L"\n");

    return 1;
}
