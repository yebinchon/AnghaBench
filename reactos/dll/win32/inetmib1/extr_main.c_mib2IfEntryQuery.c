
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int * table; int dwNumEntries; } ;
struct TYPE_5__ {int name; } ;
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
 TYPE_4__* ifTable ;
 int mapStructEntryToValue (int ,int ,int *,int ,TYPE_1__*) ;
 int mib2IfEntry ;
 int mib2IfEntryMap ;
 int setOidWithItemAndInteger (int *,int *,int ,int ) ;

__attribute__((used)) static BOOL mib2IfEntryQuery(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier entryOid = DEFINE_OID(mib2IfEntry);
    BOOL ret = TRUE;

    TRACE("(0x%02x, %s, %p)\n", bPduType, SnmpUtilOidToA(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case 130:
    case 129:
        if (!ifTable)
        {



            *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
        }
        else
        {
            UINT tableIndex = 0, item = 0;

            *pErrorStatus = getItemAndIntegerInstanceFromOid(&pVarBind->name,
                &entryOid, bPduType, &item, &tableIndex);
            if (!*pErrorStatus)
            {
                assert(tableIndex);
                assert(item);
                if (tableIndex > ifTable->dwNumEntries)
                    *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
                else
                {
                    *pErrorStatus = mapStructEntryToValue(mib2IfEntryMap,
                        DEFINE_SIZEOF(mib2IfEntryMap),
                        &ifTable->table[tableIndex - 1], item,
                        pVarBind);
                    if (bPduType == 129)
                        ret = setOidWithItemAndInteger(&pVarBind->name,
                            &entryOid, item, tableIndex);
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
