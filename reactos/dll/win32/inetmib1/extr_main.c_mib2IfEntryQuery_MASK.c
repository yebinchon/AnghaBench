#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/ * table; int /*<<< orphan*/  dwNumEntries; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SnmpVarBind ;
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* ifTable ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  mib2IfEntry ; 
 int /*<<< orphan*/  mib2IfEntryMap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(BYTE bPduType, SnmpVarBind *pVarBind,
    AsnInteger32 *pErrorStatus)
{
    AsnObjectIdentifier entryOid = FUNC0(mib2IfEntry);
    BOOL ret = TRUE;

    FUNC4("(0x%02x, %s, %p)\n", bPduType, FUNC3(&pVarBind->name),
        pErrorStatus);

    switch (bPduType)
    {
    case SNMP_PDU_GET:
    case SNMP_PDU_GETNEXT:
        if (!ifTable)
        {
            /* There is no interface present, so let the caller deal
             * with finding the successor.
             */
            *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
        }
        else
        {
            UINT tableIndex = 0, item = 0;

            *pErrorStatus = FUNC6(&pVarBind->name,
                &entryOid, bPduType, &item, &tableIndex);
            if (!*pErrorStatus)
            {
                FUNC5(tableIndex);
                FUNC5(item);
                if (tableIndex > ifTable->dwNumEntries)
                    *pErrorStatus = SNMP_ERRORSTATUS_NOSUCHNAME;
                else
                {
                    *pErrorStatus = FUNC7(mib2IfEntryMap,
                        FUNC1(mib2IfEntryMap),
                        &ifTable->table[tableIndex - 1], item,
                        pVarBind);
                    if (bPduType == SNMP_PDU_GETNEXT)
                        ret = FUNC8(&pVarBind->name,
                            &entryOid, item, tableIndex);
                }
            }
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