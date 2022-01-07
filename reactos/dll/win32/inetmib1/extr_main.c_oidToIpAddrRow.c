
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwAddr; } ;
typedef TYPE_1__ MIB_IPADDRROW ;
typedef int AsnObjectIdentifier ;


 int oidToIpAddr (int *) ;

__attribute__((used)) static void oidToIpAddrRow(AsnObjectIdentifier *oid, void *dst)
{
    MIB_IPADDRROW *row = dst;

    row->dwAddr = oidToIpAddr(oid);
}
