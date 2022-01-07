
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__* LPTSTR ;
typedef int LPCTSTR ;
typedef int BOOL ;


 int _vsntprintf (scalar_t__*,size_t,int ,int ) ;

BOOL
openvpn_vsntprintf(LPTSTR str, size_t size, LPCTSTR format, va_list arglist)
{
    int len = -1;
    if (size > 0)
    {
        len = _vsntprintf(str, size, format, arglist);
        str[size - 1] = 0;
    }
    return (len >= 0 && (size_t)len < size);
}
