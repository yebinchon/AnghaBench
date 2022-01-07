
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LONG ;
typedef int HKEY ;
typedef int HCERTSTORE ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (int const* const*) ;




 int CRYPT_RegReadSerializedFromReg (int ,size_t const,int ) ;


 int KEY_READ ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,int const* const,int ,int *,int ,int ,int *,int *,int *) ;

__attribute__((used)) static void CRYPT_RegReadFromReg(HKEY key, HCERTSTORE store)
{
    static const WCHAR * const subKeys[] = { 128, 130, 129 };
    static const DWORD contextFlags[] = { 133,
     132, 131 };
    DWORD i;

    for (i = 0; i < ARRAY_SIZE(subKeys); i++)
    {
        HKEY hKey;
        LONG rc;

        rc = RegCreateKeyExW(key, subKeys[i], 0, ((void*)0), 0, KEY_READ, ((void*)0),
         &hKey, ((void*)0));
        if (!rc)
        {
            CRYPT_RegReadSerializedFromReg(hKey, contextFlags[i], store);
            RegCloseKey(hKey);
        }
    }
}
