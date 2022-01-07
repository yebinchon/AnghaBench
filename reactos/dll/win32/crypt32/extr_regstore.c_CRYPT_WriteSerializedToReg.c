
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int BlobW ;
 int CRYPT_HashToStr (int const*,int *) ;
 int FALSE ;
 int KEY_ALL_ACCESS ;
 int REG_BINARY ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,int ,int ,int ,int const*,int ) ;
 int SetLastError (scalar_t__) ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_WriteSerializedToReg(HKEY key, DWORD flags, const BYTE *hash, const BYTE *buf,
 DWORD len)
{
    WCHAR asciiHash[20 * 2 + 1];
    LONG rc;
    HKEY subKey;
    BOOL ret;

    CRYPT_HashToStr(hash, asciiHash);
    rc = RegCreateKeyExW(key, asciiHash, 0, ((void*)0), flags, KEY_ALL_ACCESS, ((void*)0),
     &subKey, ((void*)0));
    if (!rc)
    {
        rc = RegSetValueExW(subKey, BlobW, 0, REG_BINARY, buf, len);
        RegCloseKey(subKey);
    }
    if (!rc)
        ret = TRUE;
    else
    {
        SetLastError(rc);
        ret = FALSE;
    }
    return ret;
}
