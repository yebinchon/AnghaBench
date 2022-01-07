
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustring {unsigned char* Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
typedef unsigned char* LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_REGISTRY_CORRUPT ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ KEY_SIZE ;
 scalar_t__ REG_BINARY ;
 scalar_t__ RegQueryValueExW (int ,int ,int ,scalar_t__*,unsigned char*,scalar_t__*) ;
 int SystemFunction032 (struct ustring*,struct ustring*) ;
 int wszPasswordValue ;

__attribute__((used)) static DWORD read_credential_blob(HKEY hkey, const BYTE key_data[KEY_SIZE],
                                  LPBYTE credential_blob,
                                  DWORD *credential_blob_size)
{
    DWORD ret;
    DWORD type;

    *credential_blob_size = 0;
    ret = RegQueryValueExW(hkey, wszPasswordValue, 0, &type, ((void*)0), credential_blob_size);
    if (ret != ERROR_SUCCESS)
        return ret;
    else if (type != REG_BINARY)
        return ERROR_REGISTRY_CORRUPT;
    if (credential_blob)
    {
        struct ustring data;
        struct ustring key;

        ret = RegQueryValueExW(hkey, wszPasswordValue, 0, &type, credential_blob,
                               credential_blob_size);
        if (ret != ERROR_SUCCESS)
            return ret;
        else if (type != REG_BINARY)
            return ERROR_REGISTRY_CORRUPT;

        key.Length = key.MaximumLength = KEY_SIZE;
        key.Buffer = (unsigned char *)key_data;

        data.Length = data.MaximumLength = *credential_blob_size;
        data.Buffer = credential_blob;
        SystemFunction032(&data, &key);
    }
    return ERROR_SUCCESS;
}
