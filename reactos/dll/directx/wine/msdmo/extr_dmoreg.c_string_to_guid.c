
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HRESULT ;
typedef int GUID ;


 int CLSIDFromString (char*,int *) ;
 int lstrcpyW (char*,char const*) ;

__attribute__((used)) static HRESULT string_to_guid(const WCHAR *string, GUID *guid)
{
    WCHAR buffer[39];
    buffer[0] = '{';
    lstrcpyW(buffer + 1, string);
    buffer[37] = '}';
    buffer[38] = 0;
    return CLSIDFromString(buffer, guid);
}
