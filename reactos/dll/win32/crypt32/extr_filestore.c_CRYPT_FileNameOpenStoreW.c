
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINECRYPT_CERTSTORE ;
typedef char WCHAR ;
typedef void const* LPCWSTR ;
typedef scalar_t__ HCRYPTPROV ;
typedef int * HCERTSTORE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CERT_FILE_STORE_COMMIT_ENABLE_FLAG ;
 int CERT_QUERY_CONTENT_FLAG_CERT ;
 int CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED ;
 int CERT_QUERY_CONTENT_FLAG_SERIALIZED_STORE ;
 int CERT_QUERY_FORMAT_FLAG_ALL ;
 int CERT_QUERY_OBJECT_FILE ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_NO_CRYPT_RELEASE_FLAG ;
 int CERT_STORE_OPEN_EXISTING_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CERT_STORE_READONLY_FLAG ;
 int CERT_STORE_SAVE_AS_PKCS7 ;
 int CERT_STORE_SAVE_AS_STORE ;
 int CREATE_NEW ;
 int * CRYPT_CreateFileStore (int,int *,scalar_t__,int) ;
 int * CertOpenStore (int ,int ,int ,int,int *) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (void const*,int,int ,int *,int,int ,int *) ;
 scalar_t__ CryptQueryObject (int ,void const*,int,int ,int ,int *,int*,int *,int **,int *,int *) ;
 int CryptReleaseContext (scalar_t__,int ) ;
 int ERROR_PATH_NOT_FOUND ;
 int E_INVALIDARG ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_ALWAYS ;
 int OPEN_EXISTING ;
 int SetLastError (int ) ;
 int TRACE (char*,scalar_t__,int,int ) ;
 int debugstr_w (void const*) ;
 int lstrcmpiW (void const*,char const*) ;
 void const* strrchrW (void const*,char) ;

WINECRYPT_CERTSTORE *CRYPT_FileNameOpenStoreW(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    HCERTSTORE store = 0;
    LPCWSTR fileName = pvPara;
    DWORD access, create;
    HANDLE file;

    TRACE("(%ld, %08x, %s)\n", hCryptProv, dwFlags, debugstr_w(fileName));

    if (!fileName)
    {
        SetLastError(ERROR_PATH_NOT_FOUND);
        return ((void*)0);
    }
    if ((dwFlags & CERT_STORE_READONLY_FLAG) &&
     (dwFlags & CERT_FILE_STORE_COMMIT_ENABLE_FLAG))
    {
        SetLastError(E_INVALIDARG);
        return ((void*)0);
    }

    access = GENERIC_READ;
    if (dwFlags & CERT_FILE_STORE_COMMIT_ENABLE_FLAG)
        access |= GENERIC_WRITE;
    if (dwFlags & CERT_STORE_CREATE_NEW_FLAG)
        create = CREATE_NEW;
    else if (dwFlags & CERT_STORE_OPEN_EXISTING_FLAG)
        create = OPEN_EXISTING;
    else
        create = OPEN_ALWAYS;
    file = CreateFileW(fileName, access, FILE_SHARE_READ, ((void*)0), create,
     FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (file != INVALID_HANDLE_VALUE)
    {
        HCERTSTORE memStore = ((void*)0);
        DWORD size = GetFileSize(file, ((void*)0)), type = 0;


        if (size)
        {
            DWORD contentType;
            BOOL ret;


            CloseHandle(file);
            ret = CryptQueryObject(CERT_QUERY_OBJECT_FILE, fileName,
             CERT_QUERY_CONTENT_FLAG_CERT |
             CERT_QUERY_CONTENT_FLAG_SERIALIZED_STORE |
             CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED,
             CERT_QUERY_FORMAT_FLAG_ALL, 0, ((void*)0), &contentType, ((void*)0),
             &memStore, ((void*)0), ((void*)0));
            if (ret)
            {
                if (contentType == CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED)
                    type = CERT_STORE_SAVE_AS_PKCS7;
                else
                    type = CERT_STORE_SAVE_AS_STORE;

                file = CreateFileW(fileName, access, FILE_SHARE_READ, ((void*)0),
                 create, FILE_ATTRIBUTE_NORMAL, ((void*)0));
            }
        }
        else
        {
            static const WCHAR spc[] = { 's','p','c',0 };
            static const WCHAR p7c[] = { 'p','7','c',0 };
            LPCWSTR ext = strrchrW(fileName, '.');

            if (ext)
            {
                ext++;
                if (!lstrcmpiW(ext, spc) || !lstrcmpiW(ext, p7c))
                    type = CERT_STORE_SAVE_AS_PKCS7;
            }
            if (!type)
                type = CERT_STORE_SAVE_AS_STORE;
            memStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
             CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
        }
        if (memStore)
        {
            store = CRYPT_CreateFileStore(dwFlags, memStore, file, type);

            if (hCryptProv && !(dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG))
                CryptReleaseContext(hCryptProv, 0);
        }
    }
    return store;
}
