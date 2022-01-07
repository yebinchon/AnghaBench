
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwForwardDest; } ;
typedef TYPE_1__ MIB_IPFORWARDROW ;
typedef int AsnObjectIdentifier ;


 int oidToIpAddr (int *) ;

__attribute__((used)) static void oidToIpForwardRow(AsnObjectIdentifier *oid, void *dst)
{
    MIB_IPFORWARDROW *row = dst;

    row->dwForwardDest = oidToIpAddr(oid);
}
