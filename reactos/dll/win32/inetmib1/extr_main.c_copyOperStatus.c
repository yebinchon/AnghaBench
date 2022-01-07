
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int number; } ;
struct TYPE_5__ {TYPE_1__ asnValue; int asnType; } ;
typedef int DWORD ;
typedef TYPE_2__ AsnAny ;


 int ASN_INTEGER ;
 int MIB_IF_ADMIN_STATUS_DOWN ;
 int MIB_IF_ADMIN_STATUS_TESTING ;
 int MIB_IF_ADMIN_STATUS_UP ;



 int SNMP_ERRORSTATUS_NOERROR ;

__attribute__((used)) static DWORD copyOperStatus(AsnAny *value, void *src)
{
    value->asnType = ASN_INTEGER;



    switch (*(DWORD *)src)
    {
    case 128:
        value->asnValue.number = MIB_IF_ADMIN_STATUS_UP;
        break;
    case 129:
    case 130:
        value->asnValue.number = MIB_IF_ADMIN_STATUS_TESTING;
        break;
    default:
        value->asnValue.number = MIB_IF_ADMIN_STATUS_DOWN;
    };
    return SNMP_ERRORSTATUS_NOERROR;
}
