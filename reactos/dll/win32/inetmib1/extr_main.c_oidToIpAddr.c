
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idLength; scalar_t__* ids; } ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_1__ AsnObjectIdentifier ;


 int assert (int ) ;

__attribute__((used)) static DWORD oidToIpAddr(AsnObjectIdentifier *oid)
{
    assert(oid && oid->idLength >= 4);

    return (BYTE)oid->ids[3] << 24 | (BYTE)oid->ids[2] << 16 |
        (BYTE)oid->ids[1] << 8 | (BYTE)oid->ids[0];
}
