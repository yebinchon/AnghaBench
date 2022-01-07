
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int dwNumEntries; } ;
struct TYPE_6__ {int name; } ;
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
 int assert (int ) ;
 int getItemAndIntegerInstanceFromOid (int *,int *,int,int *,int *) ;
 TYPE_3__* ipNetTable ;
 int mapStructEntryToValue (int ,int ,TYPE_3__*,int ,TYPE_1__*) ;
 int mib2IpNet ;
 int mib2IpNetMap ;
 int setOidWithItemAndInteger (int *,int *,int ,int ) ;

__attribute__((used)) static BOOL mib2IpNetQuery(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier myOid = DEFINE_OID(mib2IpNet);
    BOOL ret = TRUE;

    TRACE("(0x%02x, %s, %p)\n", bPduType, SnmpUtilOidToA(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case 130:
    case 129:
        if (!ipNetTable)
            *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
        else
        {
            UINT tableIndex = 0, item = 0;

            *pErrorStatus = getItemAndIntegerInstanceFromOid(&pVarBind->name,
                &myOid, bPduType, &item, &tableIndex);
            if (!*pErrorStatus)
            {
                assert(tableIndex);
                assert(item);
                if (tableIndex > ipNetTable->dwNumEntries)
                    *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
                else
                {
                    *pErrorStatus = mapStructEntryToValue(mib2IpNetMap,
                        DEFINE_SIZEOF(mib2IpNetMap),
                        &ipNetTable[tableIndex - 1], item, pVarBind);
                    if (!*pErrorStatus && bPduType == 129)
                        ret = setOidWithItemAndInteger(&pVarBind->name, &myOid,
                            item, tableIndex);
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
