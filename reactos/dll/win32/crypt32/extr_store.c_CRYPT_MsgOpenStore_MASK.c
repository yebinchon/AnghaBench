#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  provInfo ;
typedef  int /*<<< orphan*/  count ;
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
struct TYPE_3__ {int cbSize; int /*<<< orphan*/  hStoreProv; int /*<<< orphan*/  rgpvStoreProvFunc; int /*<<< orphan*/  cStoreProvFunc; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__* LPBYTE ;
typedef  scalar_t__ HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTMSG ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ CERT_STORE_PROV_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CERT_STORE_ADD_ALWAYS ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 scalar_t__ CERT_STORE_NO_CRYPT_RELEASE_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int /*<<< orphan*/  CMSG_CERT_COUNT_PARAM ; 
 int /*<<< orphan*/  CMSG_CERT_PARAM ; 
 int /*<<< orphan*/  CMSG_CRL_COUNT_PARAM ; 
 int /*<<< orphan*/  CMSG_CRL_PARAM ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  msgProvFuncs ; 

__attribute__((used)) static WINECRYPT_CERTSTORE *FUNC12(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    WINECRYPT_CERTSTORE *store = NULL;
    HCRYPTMSG msg = (HCRYPTMSG)pvPara;
    WINECRYPT_CERTSTORE *memStore;

    FUNC11("(%ld, %08x, %p)\n", hCryptProv, dwFlags, pvPara);

    memStore = FUNC5(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, NULL);
    if (memStore)
    {
        BOOL ret;
        DWORD size, count, i;

        size = sizeof(count);
        ret = FUNC9(msg, CMSG_CERT_COUNT_PARAM, 0, &count, &size);
        for (i = 0; ret && i < count; i++)
        {
            size = 0;
            ret = FUNC9(msg, CMSG_CERT_PARAM, i, NULL, &size);
            if (ret)
            {
                LPBYTE buf = FUNC6(size);

                if (buf)
                {
                    ret = FUNC9(msg, CMSG_CERT_PARAM, i, buf, &size);
                    if (ret)
                        ret = FUNC3(memStore,
                         X509_ASN_ENCODING, buf, size, CERT_STORE_ADD_ALWAYS,
                         NULL);
                    FUNC7(buf);
                }
            }
        }
        size = sizeof(count);
        ret = FUNC9(msg, CMSG_CRL_COUNT_PARAM, 0, &count, &size);
        for (i = 0; ret && i < count; i++)
        {
            size = 0;
            ret = FUNC9(msg, CMSG_CRL_PARAM, i, NULL, &size);
            if (ret)
            {
                LPBYTE buf = FUNC6(size);

                if (buf)
                {
                    ret = FUNC9(msg, CMSG_CRL_PARAM, i, buf, &size);
                    if (ret)
                        ret = FUNC2(memStore,
                         X509_ASN_ENCODING, buf, size, CERT_STORE_ADD_ALWAYS,
                         NULL);
                    FUNC7(buf);
                }
            }
        }
        if (ret)
        {
            CERT_STORE_PROV_INFO provInfo = { 0 };

            provInfo.cbSize = sizeof(provInfo);
            provInfo.cStoreProvFunc = FUNC0(msgProvFuncs);
            provInfo.rgpvStoreProvFunc = msgProvFuncs;
            provInfo.hStoreProv = FUNC8(msg);
            store = FUNC1(dwFlags, memStore, &provInfo);
            /* Msg store doesn't need crypto provider, so close it */
            if (hCryptProv && !(dwFlags & CERT_STORE_NO_CRYPT_RELEASE_FLAG))
                FUNC10(hCryptProv, 0);
        }
        else
            FUNC4(memStore, 0);
    }
    FUNC11("returning %p\n", store);
    return store;
}