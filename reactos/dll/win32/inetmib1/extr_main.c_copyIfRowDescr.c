
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bDescr; scalar_t__ dwDescrLen; } ;
typedef TYPE_1__* PMIB_IFROW ;
typedef int DWORD ;
typedef int BYTE ;
typedef int AsnAny ;


 int ASN_OCTETSTRING ;
 int FIELD_OFFSET (int ,int ) ;
 int MIB_IFROW ;
 int SNMP_ERRORSTATUS_NOERROR ;
 int SNMP_ERRORSTATUS_NOSUCHNAME ;
 int dwDescrLen ;
 int setStringValue (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static DWORD copyIfRowDescr(AsnAny *value, void *src)
{
    PMIB_IFROW row = (PMIB_IFROW)((BYTE *)src -
                                  FIELD_OFFSET(MIB_IFROW, dwDescrLen));
    DWORD ret;

    if (row->dwDescrLen)
    {
        setStringValue(value, ASN_OCTETSTRING, row->dwDescrLen, row->bDescr);
        ret = SNMP_ERRORSTATUS_NOERROR;
    }
    else
        ret = SNMP_ERRORSTATUS_NOSUCHNAME;
    return ret;
}
