
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ SnmpVarBind ;
typedef int BYTE ;
typedef int BOOL ;
typedef int AsnObjectIdentifier ;
typedef int AsnInteger32 ;


 int DEFINE_OID (int ) ;
 int DEFINE_SIZEOF (int ) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int SNMP_ERRORSTATUS_NOSUCHNAME ;
 int SNMP_ERRORSTATUS_READONLY ;



 int SnmpUtilOidToA (int *) ;
 int TRACE (char*,int,int ,int *) ;
 int TRUE ;
 int getItemFromOid (int *,int *,int,int *) ;
 int ipStats ;
 int mapStructEntryToValue (int ,int ,int *,int ,TYPE_1__*) ;
 int mib2Ip ;
 int mib2IpMap ;
 int setOidWithItem (int *,int *,int ) ;

__attribute__((used)) static BOOL mib2IpStatsQuery(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier myOid = DEFINE_OID(mib2Ip);
    UINT item = 0;
    BOOL ret = TRUE;

    TRACE("(0x%02x, %s, %p)\n", bPduType, SnmpUtilOidToA(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case 130:
    case 129:
        *pErrorStatus = getItemFromOid(&pVarBind->name, &myOid, bPduType,
            &item);
        if (!*pErrorStatus)
        {
            *pErrorStatus = mapStructEntryToValue(mib2IpMap,
                DEFINE_SIZEOF(mib2IpMap), &ipStats, item, pVarBind);
            if (!*pErrorStatus && bPduType == 129)
                ret = setOidWithItem(&pVarBind->name, &myOid, item);
        }
        break;
    case 128:
        *pErrorStatus = SNMP_ERRORSTATUS_READONLY;
        ret = FALSE;
        break;
    default:
        FIXME("0x%02x: unsupported PDU type\n", bPduType);
        *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
    }
    return ret;
}
