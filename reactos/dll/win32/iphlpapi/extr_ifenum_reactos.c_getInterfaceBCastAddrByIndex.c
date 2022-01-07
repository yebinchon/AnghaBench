
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int IPABcast ;
 int getAddrByIndexOrName (int ,int ,int ) ;

DWORD getInterfaceBCastAddrByIndex(DWORD index) {
    return getAddrByIndexOrName( 0, index, IPABcast );
}
