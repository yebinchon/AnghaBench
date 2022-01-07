
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Data; int Oid; } ;
typedef int QueryOid ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__ NDISUIO_QUERY_OID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DeviceIoControl (int ,int ,TYPE_1__*,int,TYPE_1__*,int,int *,int *) ;
 int FALSE ;
 int IOCTL_NDISUIO_QUERY_OID_VALUE ;
 scalar_t__ NdisPhysicalMediumWirelessLan ;
 int OID_GEN_PHYSICAL_MEDIUM ;
 int TRUE ;

BOOL
IsWlanAdapter(HANDLE hAdapter)
{
    BOOL bSuccess;
    DWORD dwBytesReturned;
    NDISUIO_QUERY_OID QueryOid;


    QueryOid.Oid = OID_GEN_PHYSICAL_MEDIUM;

    bSuccess = DeviceIoControl(hAdapter,
                               IOCTL_NDISUIO_QUERY_OID_VALUE,
                               &QueryOid,
                               sizeof(QueryOid),
                               &QueryOid,
                               sizeof(QueryOid),
                               &dwBytesReturned,
                               ((void*)0));
    if (!bSuccess || *(PULONG)QueryOid.Data != NdisPhysicalMediumWirelessLan)
        return FALSE;

    return TRUE;
}
