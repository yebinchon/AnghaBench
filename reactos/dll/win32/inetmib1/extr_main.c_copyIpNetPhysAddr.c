
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bPhysAddr; int dwPhysAddrLen; } ;
typedef TYPE_1__* PMIB_IPNETROW ;
typedef int DWORD ;
typedef int BYTE ;
typedef int AsnAny ;


 int ASN_OCTETSTRING ;
 int FIELD_OFFSET (int ,int ) ;
 int MIB_IPNETROW ;
 int SNMP_ERRORSTATUS_NOERROR ;
 int dwPhysAddrLen ;
 int setStringValue (int *,int ,int ,int ) ;

__attribute__((used)) static DWORD copyIpNetPhysAddr(AsnAny *value, void *src)
{
    PMIB_IPNETROW row = (PMIB_IPNETROW)((BYTE *)src - FIELD_OFFSET(MIB_IPNETROW,
                                        dwPhysAddrLen));

    setStringValue(value, ASN_OCTETSTRING, row->dwPhysAddrLen, row->bPhysAddr);
    return SNMP_ERRORSTATUS_NOERROR;
}
