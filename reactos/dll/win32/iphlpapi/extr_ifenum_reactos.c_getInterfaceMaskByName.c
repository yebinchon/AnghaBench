
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int IPAMask ;
 int getAddrByIndexOrName (char*,int ,int ) ;

DWORD getInterfaceMaskByName(const char *name) {
    return getAddrByIndexOrName( (char *)name, 0, IPAMask );
}
