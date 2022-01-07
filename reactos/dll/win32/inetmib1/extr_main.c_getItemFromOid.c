
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {size_t idLength; int* ids; } ;
typedef int BYTE ;
typedef TYPE_1__ AsnObjectIdentifier ;
typedef int AsnInteger32 ;


 int SNMP_ERRORSTATUS_NOERROR ;
 int SNMP_ERRORSTATUS_NOSUCHNAME ;

 int SnmpUtilOidNCmp (TYPE_1__*,TYPE_1__*,size_t) ;

__attribute__((used)) static AsnInteger32 getItemFromOid(AsnObjectIdentifier *oid,
    AsnObjectIdentifier *base, BYTE bPduType, UINT *item)
{
    AsnInteger32 ret = SNMP_ERRORSTATUS_NOERROR;

    switch (bPduType)
    {
    case 128:
        if (SnmpUtilOidNCmp(oid, base, base->idLength) < 0)
            *item = 1;
        else if (!SnmpUtilOidNCmp(oid, base, base->idLength))
        {
            if (oid->idLength == base->idLength)
            {

                *item = 1;
            }
            else
                *item = oid->ids[base->idLength] + 1;
        }
        else
            ret = SNMP_ERRORSTATUS_NOSUCHNAME;
        break;
    default:
        if (!SnmpUtilOidNCmp(oid, base, base->idLength))
        {
            if (oid->idLength == base->idLength)
            {

                ret = SNMP_ERRORSTATUS_NOSUCHNAME;
            }
            else
            {
                *item = oid->ids[base->idLength];
                if (!*item)
                    ret = SNMP_ERRORSTATUS_NOSUCHNAME;
            }
        }
        else
            ret = SNMP_ERRORSTATUS_NOSUCHNAME;
    }
    return ret;
}
