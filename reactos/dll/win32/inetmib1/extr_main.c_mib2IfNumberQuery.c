
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int dwNumEntries; } ;
struct TYPE_9__ {int idLength; } ;
struct TYPE_8__ {int name; int value; } ;
typedef TYPE_1__ SnmpVarBind ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_2__ AsnObjectIdentifier ;
typedef int AsnInteger32 ;


 TYPE_2__ DEFINE_OID (int ) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int SNMP_ERRORSTATUS_NOERROR ;
 int SNMP_ERRORSTATUS_NOSUCHNAME ;
 int SNMP_ERRORSTATUS_READONLY ;



 int SnmpUtilOidCpy (int *,TYPE_2__*) ;
 int SnmpUtilOidFree (int *) ;
 int SnmpUtilOidNCmp (int *,TYPE_2__*,int ) ;
 int SnmpUtilOidToA (int *) ;
 int TRACE (char*,int,int ,int *) ;
 int TRUE ;
 int copyInt (int *,int *) ;
 TYPE_4__* ifTable ;
 int mib2IfNumber ;

__attribute__((used)) static BOOL mib2IfNumberQuery(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier numberOid = DEFINE_OID(mib2IfNumber);
    BOOL ret = TRUE;

    TRACE("(0x%02x, %s, %p)\n", bPduType, SnmpUtilOidToA(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case 130:
    case 129:
        if ((bPduType == 130 &&
            !SnmpUtilOidNCmp(&pVarBind->name, &numberOid, numberOid.idLength))
            || SnmpUtilOidNCmp(&pVarBind->name, &numberOid, numberOid.idLength)
            < 0)
        {
            DWORD numIfs = ifTable ? ifTable->dwNumEntries : 0;

            copyInt(&pVarBind->value, &numIfs);
            if (bPduType == 129)
            {
                SnmpUtilOidFree(&pVarBind->name);
                SnmpUtilOidCpy(&pVarBind->name, &numberOid);
            }
            *pErrorStatus = SNMP_ERRORSTATUS_NOERROR;
        }
        else
        {
            *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;



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
