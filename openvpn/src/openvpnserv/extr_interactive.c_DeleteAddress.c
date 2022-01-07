
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PMIB_UNICASTIPADDRESS_ROW ;
typedef int DWORD ;


 int DeleteUnicastIpAddressEntry (int ) ;

__attribute__((used)) static DWORD
DeleteAddress(PMIB_UNICASTIPADDRESS_ROW addr_row)
{
    return DeleteUnicastIpAddressEntry(addr_row);
}
