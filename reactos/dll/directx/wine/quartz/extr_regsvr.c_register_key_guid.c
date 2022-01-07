
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LONG ;
typedef int HKEY ;
typedef int GUID ;


 int StringFromGUID2 (int const*,int *,int) ;
 int register_key_defvalueW (int ,int const*,int *) ;

__attribute__((used)) static LONG register_key_guid(HKEY base, WCHAR const *name, GUID const *guid)
{
    WCHAR buf[39];

    StringFromGUID2(guid, buf, 39);
    return register_key_defvalueW(base, name, buf);
}
