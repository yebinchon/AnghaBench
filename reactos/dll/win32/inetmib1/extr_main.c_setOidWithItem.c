
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int idLength; int * ids; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ AsnObjectIdentifier ;


 scalar_t__ SnmpUtilOidAppend (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ SnmpUtilOidCpy (TYPE_1__*,TYPE_1__*) ;
 int SnmpUtilOidFree (TYPE_1__*) ;

__attribute__((used)) static INT setOidWithItem(AsnObjectIdentifier *dst, AsnObjectIdentifier *base,
    UINT item)
{
    UINT id;
    AsnObjectIdentifier oid;
    INT ret;

    SnmpUtilOidFree(dst);
    ret = SnmpUtilOidCpy(dst, base);
    if (ret)
    {
        oid.idLength = 1;
        oid.ids = &id;
        id = item;
        ret = SnmpUtilOidAppend(dst, &oid);
    }
    return ret;
}
