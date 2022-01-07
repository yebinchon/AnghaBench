
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int AsnAny ;


 int ASN_IPADDRESS ;
 int SNMP_ERRORSTATUS_NOERROR ;
 int setStringValue (int *,int ,int,void*) ;

__attribute__((used)) static DWORD copyIpAddr(AsnAny *value, void *src)
{
    setStringValue(value, ASN_IPADDRESS, sizeof(DWORD), src);
    return SNMP_ERRORSTATUS_NOERROR;
}
