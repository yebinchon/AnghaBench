#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct GenericTable {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {TYPE_3__* table; } ;
struct TYPE_7__ {int /*<<< orphan*/  dwForwardDest; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SnmpVarBind ;
typedef  int /*<<< orphan*/  MIB_IPFORWARDROW ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  AsnObjectIdentifier ;
typedef  int /*<<< orphan*/  AsnInteger32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  SNMP_ERRORSTATUS_NOSUCHNAME ; 
 int /*<<< orphan*/  SNMP_ERRORSTATUS_READONLY ; 
#define  SNMP_PDU_GET 130 
#define  SNMP_PDU_GETNEXT 129 
#define  SNMP_PDU_SET 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compareIpForwardRow ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,struct GenericTable*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* ipRouteTable ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  mib2IpRoute ; 
 int /*<<< orphan*/  mib2IpRouteMap ; 
 int /*<<< orphan*/  oidToIpForwardRow ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier myOid = FUNC0(mib2IpRoute);
    UINT tableIndex = 0, item = 0;
    BOOL ret = TRUE;

    FUNC4("(0x%02x, %s, %p)\n", bPduType, FUNC3(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case SNMP_PDU_GET:
    case SNMP_PDU_GETNEXT:
        *pErrorStatus = FUNC6(&pVarBind->name,
            &myOid, 4, bPduType, (struct GenericTable *)ipRouteTable,
            sizeof(MIB_IPFORWARDROW), oidToIpForwardRow, compareIpForwardRow,
            &item, &tableIndex);
        if (!*pErrorStatus)
        {
            FUNC5(tableIndex);
            FUNC5(item);
            *pErrorStatus = FUNC7(mib2IpRouteMap,
                FUNC1(mib2IpRouteMap),
                &ipRouteTable->table[tableIndex - 1], item, pVarBind);
            if (!*pErrorStatus && bPduType == SNMP_PDU_GETNEXT)
                ret = FUNC8(&pVarBind->name, &myOid, item,
                    ipRouteTable->table[tableIndex - 1].dwForwardDest);
        }
        break;
    case SNMP_PDU_SET:
        *pErrorStatus = SNMP_ERRORSTATUS_READONLY;
        ret = FALSE;
        break;
    default:
        FUNC2("0x%02x: unsupported PDU type\n", bPduType);
        *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
    }
    return ret;
}