
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int idLength; int * ids; } ;
struct TYPE_5__ {int dwLocalPort; int dwLocalAddr; } ;
typedef TYPE_1__ MIB_UDPROW ;
typedef TYPE_2__ AsnObjectIdentifier ;


 int assert (int ) ;
 int oidToIpAddr (TYPE_2__*) ;

__attribute__((used)) static void oidToUdpRow(AsnObjectIdentifier *oid, void *dst)
{
    MIB_UDPROW *row = dst;

    assert(oid && oid->idLength >= 5);
    row->dwLocalAddr = oidToIpAddr(oid);
    row->dwLocalPort = oid->ids[4];
}
