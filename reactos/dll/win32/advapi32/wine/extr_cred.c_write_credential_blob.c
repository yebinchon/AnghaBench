
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustring {unsigned char* Buffer; int MaximumLength; int Length; } ;
typedef int LPCWSTR ;
typedef unsigned char* LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_OUTOFMEMORY ;
 int KEY_SIZE ;
 int REG_BINARY ;
 int RegSetValueExW (int ,int ,int ,int ,unsigned char*,int ) ;
 int SystemFunction032 (struct ustring*,struct ustring*) ;
 unsigned char* heap_alloc (int ) ;
 int heap_free (unsigned char*) ;
 int memcpy (unsigned char*,int const*,int ) ;
 int wszPasswordValue ;

__attribute__((used)) static DWORD write_credential_blob(HKEY hkey, LPCWSTR target_name, DWORD type,
                                   const BYTE key_data[KEY_SIZE],
                                   const BYTE *credential_blob, DWORD credential_blob_size)
{
    LPBYTE encrypted_credential_blob;
    struct ustring data;
    struct ustring key;
    DWORD ret;

    key.Length = key.MaximumLength = KEY_SIZE;
    key.Buffer = (unsigned char *)key_data;

    encrypted_credential_blob = heap_alloc(credential_blob_size);
    if (!encrypted_credential_blob) return ERROR_OUTOFMEMORY;

    memcpy(encrypted_credential_blob, credential_blob, credential_blob_size);
    data.Length = data.MaximumLength = credential_blob_size;
    data.Buffer = encrypted_credential_blob;
    SystemFunction032(&data, &key);

    ret = RegSetValueExW(hkey, wszPasswordValue, 0, REG_BINARY, encrypted_credential_blob, credential_blob_size);
    heap_free(encrypted_credential_blob);

    return ret;
}
