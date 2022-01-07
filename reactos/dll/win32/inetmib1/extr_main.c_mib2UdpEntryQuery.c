
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct GenericTable {int dummy; } ;
typedef int UINT ;
struct TYPE_14__ {int dwLocalPort; int dwLocalAddr; } ;
struct TYPE_13__ {TYPE_6__* table; } ;
struct TYPE_12__ {int idLength; int * ids; } ;
struct TYPE_11__ {int name; } ;
typedef TYPE_1__ SnmpVarBind ;
typedef int MIB_UDPROW ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_2__ AsnObjectIdentifier ;
typedef int AsnInteger32 ;


 TYPE_2__ DEFINE_OID (int ) ;
 int DEFINE_SIZEOF (int ) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int SNMP_ERRORSTATUS_NOSUCHNAME ;
 int SNMP_ERRORSTATUS_READONLY ;



 int SnmpUtilOidAppend (int *,TYPE_2__*) ;
 int SnmpUtilOidToA (int *) ;
 int TRACE (char*,int,int ,int *) ;
 int TRUE ;
 int assert (int ) ;
 int compareUdpRow ;
 int getItemAndInstanceFromTable (int *,TYPE_2__*,int,int,struct GenericTable*,int,int ,int ,int *,int *) ;
 int mapStructEntryToValue (int ,int ,TYPE_6__*,int ,TYPE_1__*) ;
 int mib2UdpEntry ;
 int mib2UdpEntryMap ;
 int oidToUdpRow ;
 int setOidWithItemAndIpAddr (int *,TYPE_2__*,int ,int ) ;
 TYPE_3__* udpTable ;

__attribute__((used)) static BOOL mib2UdpEntryQuery(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier myOid = DEFINE_OID(mib2UdpEntry);
    BOOL ret = TRUE;

    TRACE("(0x%02x, %s, %p)\n", bPduType, SnmpUtilOidToA(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case 130:
    case 129:
        if (!udpTable)
            *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
        else
        {
            UINT tableIndex = 0, item = 0;

            *pErrorStatus = getItemAndInstanceFromTable(&pVarBind->name, &myOid,
                5, bPduType, (struct GenericTable *)udpTable,
                sizeof(MIB_UDPROW), oidToUdpRow, compareUdpRow, &item,
                &tableIndex);
            if (!*pErrorStatus)
            {
                assert(tableIndex);
                assert(item);
                *pErrorStatus = mapStructEntryToValue(mib2UdpEntryMap,
                    DEFINE_SIZEOF(mib2UdpEntryMap),
                    &udpTable->table[tableIndex - 1], item, pVarBind);
                if (!*pErrorStatus && bPduType == 129)
                {
                    AsnObjectIdentifier oid;

                    ret = setOidWithItemAndIpAddr(&pVarBind->name, &myOid, item,
                        udpTable->table[tableIndex - 1].dwLocalAddr);
                    if (ret)
                    {
                        oid.idLength = 1;
                        oid.ids = &udpTable->table[tableIndex - 1].dwLocalPort;
                        ret = SnmpUtilOidAppend(&pVarBind->name, &oid);
                    }
                }
            }
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
