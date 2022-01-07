
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP_ADAPTER_INDEX_MAP ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int FALSE ;
 scalar_t__ IsWlanAdapter (int ) ;
 int OpenAdapterHandle (scalar_t__,int *,int *) ;
 int TRUE ;

BOOL
OpenWlanAdapter(HANDLE *hAdapter, IP_ADAPTER_INDEX_MAP *IpInfo)
{
    DWORD dwCurrentIndex;

    for (dwCurrentIndex = 0; ; dwCurrentIndex++)
    {
        if (!OpenAdapterHandle(dwCurrentIndex, hAdapter, IpInfo))
            break;

        if (IsWlanAdapter(*hAdapter))
            return TRUE;
        else
            CloseHandle(*hAdapter);
    }

    return FALSE;
}
