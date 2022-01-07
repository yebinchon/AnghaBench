
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PNET_LUID ;
typedef int NETIO_STATUS ;
typedef scalar_t__ LPWSTR ;
typedef int DWORD ;


 int ConvertInterfaceAliasToLuid (scalar_t__,int ) ;
 int ERROR_OUTOFMEMORY ;
 int free (scalar_t__) ;
 scalar_t__ utf8to16 (char const*) ;

__attribute__((used)) static DWORD
InterfaceLuid(const char *iface_name, PNET_LUID luid)
{
    NETIO_STATUS status;
    LPWSTR wide_name = utf8to16(iface_name);

    if (wide_name)
    {
        status = ConvertInterfaceAliasToLuid(wide_name, luid);
        free(wide_name);
    }
    else
    {
        status = ERROR_OUTOFMEMORY;
    }
    return status;
}
