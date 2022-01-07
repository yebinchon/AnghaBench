
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int idLength; int * ids; } ;
typedef scalar_t__ INT ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_1__ AsnObjectIdentifier ;


 scalar_t__ SnmpUtilOidAppend (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ setOidWithItem (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static INT setOidWithItemAndIpAddr(AsnObjectIdentifier *dst,
    AsnObjectIdentifier *base, UINT item, DWORD addr)
{
    UINT id;
    BYTE *ptr;
    AsnObjectIdentifier oid;
    INT ret;

    ret = setOidWithItem(dst, base, item);
    if (ret)
    {
        oid.idLength = 1;
        oid.ids = &id;
        for (ptr = (BYTE *)&addr; ret && ptr < (BYTE *)&addr + sizeof(DWORD);
         ptr++)
        {
            id = *ptr;
            ret = SnmpUtilOidAppend(dst, &oid);
        }
    }
    return ret;
}
