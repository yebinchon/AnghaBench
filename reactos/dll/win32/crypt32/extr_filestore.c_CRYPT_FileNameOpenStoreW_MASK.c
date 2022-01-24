#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
typedef  char WCHAR ;
typedef  void const* LPCWSTR ;
typedef  scalar_t__ HCRYPTPROV ;
typedef  int /*<<< orphan*/ * HCERTSTORE ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CERT_FILE_STORE_COMMIT_ENABLE_FLAG ; 
 int CERT_QUERY_CONTENT_FLAG_CERT ; 
 int CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED ; 
 int CERT_QUERY_CONTENT_FLAG_SERIALIZED_STORE ; 
 int /*<<< orphan*/  CERT_QUERY_FORMAT_FLAG_ALL ; 
 int /*<<< orphan*/  CERT_QUERY_OBJECT_FILE ; 
 int CERT_STORE_CREATE_NEW_FLAG ; 
 int CERT_STORE_NO_CRYPT_RELEASE_FLAG ; 
 int CERT_STORE_OPEN_EXISTING_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int CERT_STORE_READONLY_FLAG ; 
 int CERT_STORE_SAVE_AS_PKCS7 ; 
 int CERT_STORE_SAVE_AS_STORE ; 
 int CREATE_NEW ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int OPEN_ALWAYS ; 
 int OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void const*) ; 
 int /*<<< orphan*/  FUNC10 (void const*,char const*) ; 
 void const* FUNC11 (void const*,char) ; 

WINECRYPT_CERTSTORE *FUNC12(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    HCERTSTORE store = 0;
    LPCWSTR fileName = pvPara;
    DWORD access, create;
    HANDLE file;

    FUNC8("(%ld, %08x, %s)\n", hCryptProv, dwFlags, FUNC9(fileName));

    if (!fileName)
    {
        FUNC7(ERROR_PATH_NOT_FOUND);
        return NULL;
    }
    if ((dwFlags & CERT_STORE_READONLY_FLAG) &&
     (dwFlags & CERT_FILE_STORE_COMMIT_ENABLE_FLAG))
    {
        FUNC7(E_INVALIDARG);
        return NULL;
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
    file = FUNC3(fileName, access, FILE_SHARE_READ, NULL, create,
     FILE_ATTRIBUTE_NORMAL, NULL);
    if (file != INVALID_HANDLE_VALUE)
    {
        HCERTSTORE memStore = NULL;
        DWORD size = FUNC6(file, NULL), type = 0;

        /* If the file isn't empty, try to get the type from the file itself */
        if (size)
        {
            DWORD contentType;
            BOOL ret;

            /* Close the file so CryptQueryObject can succeed.. */
            FUNC2(file);
            ret = FUNC4(CERT_QUERY_OBJECT_FILE, fileName,
             CERT_QUERY_CONTENT_FLAG_CERT |
             CERT_QUERY_CONTENT_FLAG_SERIALIZED_STORE |
             CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED,
             CERT_QUERY_FORMAT_FLAG_ALL, 0, NULL, &contentType, NULL,
             &memStore, NULL, NULL);
            if (ret)
            {
                if (contentType == CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED)
                    type = CERT_STORE_SAVE_AS_PKCS7;
                else
                    type = CERT_STORE_SAVE_AS_STORE;
                /* and reopen the file. */
                file = FUNC3(fileName, access, FILE_SHARE_READ, NULL,
                 create, FILE_ATTRIBUTE_NORMAL, NULL);
            }
        }
        else
        {
            static const WCHAR spc[] = { 's','p','c',0 };
            static const WCHAR p7c[] = { 'p','7','c',0 };
            LPCWSTR ext = FUNC11(fileName, '.');

            if (ext)
            {
                ext++;
                if (!FUNC10(ext, spc) || !FUNC10(ext, p7c))
                    type = CERT_STORE_SAVE_AS_PKCS7;
            }
            if (!type)
                type = CERT_STORE_SAVE_AS_STORE;
            memStore = FUNC1(CERT_STORE_PROV_MEMORY, 0, 0,
             CERT_STORE_CREATE_NEW_FLAG, NULL);
        }
        if (memStore)
        {
            store = FUNC0(dwFlags, memStore, file, type);
            /* File store doesn't need crypto provider, so close it */
            if (hCryptProv && !(dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG))
                FUNC5(hCryptProv, 0);
        }
    }
    return store;
}