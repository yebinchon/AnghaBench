
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PDWORD ;
typedef int DWORD ;


 int IFMtu ;
 int STATUS_SUCCESS ;
 int getAddrByIndexOrName (int ,int ,int ) ;

DWORD getInterfaceMtuByIndex(DWORD index, PDWORD mtu) {
    *mtu = getAddrByIndexOrName( 0, index, IFMtu );
    return STATUS_SUCCESS;
}
