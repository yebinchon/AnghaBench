
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int * PDWORD ;
typedef int * PBOOL ;
typedef scalar_t__ DWORD ;


 int DhcpCApiCleanup () ;
 scalar_t__ DhcpCApiInitialize (scalar_t__*) ;
 scalar_t__ DhcpRosGetAdapterInfo (scalar_t__,int *,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int INADDR_NONE ;
 int htonl (int ) ;

DWORD getDhcpInfoForAdapter(DWORD AdapterIndex,
                            PBOOL DhcpEnabled,
                            PDWORD DhcpServer,
                            time_t *LeaseObtained,
                            time_t *LeaseExpires)
{
    DWORD Status, Version = 0;

    Status = DhcpCApiInitialize(&Version);
    if (Status != ERROR_SUCCESS)
    {

        *DhcpEnabled = FALSE;
        *DhcpServer = htonl(INADDR_NONE);
        *LeaseObtained = 0;
        *LeaseExpires = 0;
        return ERROR_SUCCESS;
    }

    Status = DhcpRosGetAdapterInfo(AdapterIndex, DhcpEnabled, DhcpServer,
                                   LeaseObtained, LeaseExpires);

    DhcpCApiCleanup();

    return Status;
}
