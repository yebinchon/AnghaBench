
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PDWORD ;
typedef int DWORD ;


 int IFStatus ;
 int STATUS_SUCCESS ;
 int getAddrByIndexOrName (int ,int ,int ) ;

DWORD getInterfaceStatusByIndex(DWORD index, PDWORD status)
{
    *status = getAddrByIndexOrName( 0, index, IFStatus );
    return STATUS_SUCCESS;
}
