
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct structToAsnValue {int offset; int (* copy ) (int *,int *) ;} ;
typedef size_t UINT ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ SnmpVarBind ;
typedef int BYTE ;
typedef int AsnInteger32 ;


 int SNMP_ERRORSTATUS_NOSUCHNAME ;
 int stub1 (int *,int *) ;

__attribute__((used)) static AsnInteger32 mapStructEntryToValue(struct structToAsnValue *map,
    UINT mapLen, void *record, UINT id, SnmpVarBind *pVarBind)
{

    if (!id)
        return SNMP_ERRORSTATUS_NOSUCHNAME;
    --id;
    if (id >= mapLen)
        return SNMP_ERRORSTATUS_NOSUCHNAME;
    if (!map[id].copy)
        return SNMP_ERRORSTATUS_NOSUCHNAME;
    return map[id].copy(&pVarBind->value, (BYTE *)record + map[id].offset);
}
