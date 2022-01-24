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
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/ * HCERTSTORE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CRYPT_DATA_BLOB ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int CERT_STORE_DELETE_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,...) ; 

__attribute__((used)) static WINECRYPT_CERTSTORE *FUNC5(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    HCERTSTORE store;
    const CRYPT_DATA_BLOB *data = pvPara;

    FUNC4("(%ld, %08x, %p)\n", &hCryptProv, dwFlags, pvPara);

    if (dwFlags & CERT_STORE_DELETE_FLAG)
    {
        FUNC3(ERROR_CALL_NOT_IMPLEMENTED);
        return NULL;
    }

    store = FUNC2(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, NULL);
    if (store)
    {
        if (!FUNC0(data, store))
        {
            FUNC1(store, 0);
            store = NULL;
        }
    }
    FUNC4("returning %p\n", store);
    return (WINECRYPT_CERTSTORE*)store;
}