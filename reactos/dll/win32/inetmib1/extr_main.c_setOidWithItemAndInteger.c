
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int idLength; int * ids; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ AsnObjectIdentifier ;


 scalar_t__ SnmpUtilOidAppend (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ setOidWithItem (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static INT setOidWithItemAndInteger(AsnObjectIdentifier *dst,
    AsnObjectIdentifier *base, UINT item, UINT instance)
{
    AsnObjectIdentifier oid;
    INT ret;

    ret = setOidWithItem(dst, base, item);
    if (ret)
    {
        oid.idLength = 1;
        oid.ids = &instance;
        ret = SnmpUtilOidAppend(dst, &oid);
    }
    return ret;
}
