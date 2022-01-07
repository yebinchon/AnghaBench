
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int IPAMask ;
 int getAddrByIndexOrName (int ,int ,int ) ;

DWORD getInterfaceMaskByIndex(DWORD index) {
    return getAddrByIndexOrName( 0, index, IPAMask );
}
