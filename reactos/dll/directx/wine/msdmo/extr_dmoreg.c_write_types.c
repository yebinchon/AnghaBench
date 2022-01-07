
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int subtype; int type; } ;
typedef int * LPCWSTR ;
typedef int LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef TYPE_1__ DMO_PARTIAL_MEDIATYPE ;
typedef int BYTE ;


 int GUIDToString (int *,int *) ;
 int HRESULT_FROM_WIN32 (int ) ;
 int KEY_WRITE ;
 int MSDMO_MAJOR_VERSION ;
 int REG_BINARY ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int *,int *) ;
 int RegSetValueExW (int ,int *,int ,int ,int const*,int) ;

__attribute__((used)) static HRESULT write_types(HKEY hkey, LPCWSTR name, const DMO_PARTIAL_MEDIATYPE* types, DWORD count)
{
    LONG ret;

    if (MSDMO_MAJOR_VERSION > 5)
    {
        ret = RegSetValueExW(hkey, name, 0, REG_BINARY, (const BYTE*) types,
                          count* sizeof(DMO_PARTIAL_MEDIATYPE));
    }
    else
    {
        HKEY skey1,skey2,skey3;
        DWORD index = 0;
        WCHAR szGuidKey[64];

        ret = RegCreateKeyExW(hkey, name, 0, ((void*)0), REG_OPTION_NON_VOLATILE,
                               KEY_WRITE, ((void*)0), &skey1, ((void*)0));
        if (ret)
            return HRESULT_FROM_WIN32(ret);

        while (index < count)
        {
            GUIDToString(szGuidKey,&types[index].type);
            ret = RegCreateKeyExW(skey1, szGuidKey, 0, ((void*)0),
                        REG_OPTION_NON_VOLATILE, KEY_WRITE, ((void*)0), &skey2, ((void*)0));
            GUIDToString(szGuidKey,&types[index].subtype);
            ret = RegCreateKeyExW(skey2, szGuidKey, 0, ((void*)0),
                        REG_OPTION_NON_VOLATILE, KEY_WRITE, ((void*)0), &skey3, ((void*)0));
            RegCloseKey(skey3);
            RegCloseKey(skey2);
            index ++;
        }
        RegCloseKey(skey1);
    }

    return HRESULT_FROM_WIN32(ret);
}
