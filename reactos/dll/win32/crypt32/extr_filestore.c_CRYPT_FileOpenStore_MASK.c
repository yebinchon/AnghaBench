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
typedef  scalar_t__ HCRYPTPROV ;
typedef  scalar_t__ HCERTSTORE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int CERT_FILE_STORE_COMMIT_ENABLE_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int CERT_STORE_DELETE_FLAG ; 
 int CERT_STORE_NO_CRYPT_RELEASE_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int CERT_STORE_READONLY_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_SAVE_AS_STORE ; 
 int /*<<< orphan*/ * FUNC0 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  TRUE ; 

WINECRYPT_CERTSTORE *FUNC8(HCRYPTPROV hCryptProv, DWORD dwFlags,
 const void *pvPara)
{
    WINECRYPT_CERTSTORE *store = NULL;
    HANDLE file = (HANDLE)pvPara;

    FUNC7("(%ld, %08x, %p)\n", hCryptProv, dwFlags, pvPara);

    if (!pvPara)
    {
        FUNC6(ERROR_INVALID_HANDLE);
        return NULL;
    }
    if (dwFlags & CERT_STORE_DELETE_FLAG)
    {
        FUNC6(E_INVALIDARG);
        return NULL;
    }
    if ((dwFlags & CERT_STORE_READONLY_FLAG) &&
     (dwFlags & CERT_FILE_STORE_COMMIT_ENABLE_FLAG))
    {
        FUNC6(E_INVALIDARG);
        return NULL;
    }

    if (FUNC4(FUNC5(), (HANDLE)pvPara,
     FUNC5(), &file, dwFlags & CERT_STORE_READONLY_FLAG ?
     GENERIC_READ : GENERIC_READ | GENERIC_WRITE, TRUE, 0))
    {
        HCERTSTORE memStore;

        memStore = FUNC2(CERT_STORE_PROV_MEMORY, 0, 0,
         CERT_STORE_CREATE_NEW_FLAG, NULL);
        if (memStore)
        {
            if (FUNC1(file, memStore))
            {
                store = FUNC0(dwFlags, memStore, file,
                 CERT_STORE_SAVE_AS_STORE);
                /* File store doesn't need crypto provider, so close it */
                if (hCryptProv &&
                 !(dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG))
                    FUNC3(hCryptProv, 0);
            }
        }
    }
    FUNC7("returning %p\n", store);
    return store;
}