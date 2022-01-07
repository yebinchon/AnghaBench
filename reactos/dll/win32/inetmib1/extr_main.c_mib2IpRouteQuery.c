
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct GenericTable {int dummy; } ;
typedef int UINT ;
struct TYPE_8__ {TYPE_3__* table; } ;
struct TYPE_7__ {int dwForwardDest; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ SnmpVarBind ;
typedef int MIB_IPFORWARDROW ;
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
 int assert (int ) ;
 int compareIpForwardRow ;
 int getItemAndInstanceFromTable (int *,int *,int,int,struct GenericTable*,int,int ,int ,int *,int *) ;
 TYPE_5__* ipRouteTable ;
 int mapStructEntryToValue (int ,int ,TYPE_3__*,int ,TYPE_1__*) ;
 int mib2IpRoute ;
 int mib2IpRouteMap ;
 int oidToIpForwardRow ;
 int setOidWithItemAndIpAddr (int *,int *,int ,int ) ;

__attribute__((used)) static BOOL mib2IpRouteQuery(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier myOid = DEFINE_OID(mib2IpRoute);
    UINT tableIndex = 0, item = 0;
    BOOL ret = TRUE;

    TRACE("(0x%02x, %s, %p)\n", bPduType, SnmpUtilOidToA(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case 130:
    case 129:
        *pErrorStatus = getItemAndInstanceFromTable(&pVarBind->name,
            &myOid, 4, bPduType, (struct GenericTable *)ipRouteTable,
            sizeof(MIB_IPFORWARDROW), oidToIpForwardRow, compareIpForwardRow,
            &item, &tableIndex);
        if (!*pErrorStatus)
        {
            assert(tableIndex);
            assert(item);
            *pErrorStatus = mapStructEntryToValue(mib2IpRouteMap,
                DEFINE_SIZEOF(mib2IpRouteMap),
                &ipRouteTable->table[tableIndex - 1], item, pVarBind);
            if (!*pErrorStatus && bPduType == 129)
                ret = setOidWithItemAndIpAddr(&pVarBind->name, &myOid, item,
                    ipRouteTable->table[tableIndex - 1].dwForwardDest);
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
