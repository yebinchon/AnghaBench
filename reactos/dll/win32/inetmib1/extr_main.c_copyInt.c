
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
 int SNMP_ERRORSTATUS_NOERROR ;

__attribute__((used)) static DWORD copyInt(AsnAny *value, void *src)
{
    value->asnType = ASN_INTEGER;
    value->asnValue.number = *(DWORD *)src;
    return SNMP_ERRORSTATUS_NOERROR;
}
