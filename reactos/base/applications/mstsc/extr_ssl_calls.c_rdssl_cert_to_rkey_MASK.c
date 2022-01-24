#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_5__ {TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  SubjectPublicKeyInfo; } ;
typedef  TYPE_2__* PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_NEWKEYSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  MS_ENHANCED_PROV ; 
 scalar_t__ NTE_BAD_KEYSET ; 
 int PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  PUBLICKEYBLOB ; 
 int X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

uint8 *FUNC9(PCCERT_CONTEXT cert, uint32 * key_len)
{
    HCRYPTPROV hCryptProv;
    HCRYPTKEY hKey;
    BOOL ret;
    BYTE * rkey;
    DWORD dwSize, dwErr;
    ret = FUNC0(&hCryptProv,
                              NULL,
                              MS_ENHANCED_PROV,
                              PROV_RSA_FULL,
                              0);
    if (!ret)
    {
        dwErr = FUNC5();
        if (dwErr == NTE_BAD_KEYSET)
        {
            ret = FUNC0(&hCryptProv,
                                      L"MSTSC",
                                      MS_ENHANCED_PROV,
                                      PROV_RSA_FULL,
                                      CRYPT_NEWKEYSET);
        }
    }
    if (!ret)
    {
        dwErr = FUNC5();
        FUNC6("CryptAcquireContext call failed with %lx\n", dwErr);
        return NULL;
    }
    ret = FUNC3(hCryptProv,
                                     X509_ASN_ENCODING | PKCS_7_ASN_ENCODING,
                                     &(cert->pCertInfo->SubjectPublicKeyInfo),
                                     0,
                                     0,
                                     NULL,
                                     &hKey);
    if (!ret)
    {
        dwErr = FUNC5();
        FUNC4(hCryptProv, 0);
        FUNC6("CryptImportPublicKeyInfoEx call failed with %lx\n", dwErr);
        return NULL;
    }
    ret = FUNC2(hKey,
                         0,
                         PUBLICKEYBLOB,
                         0,
                         NULL,
                         &dwSize);
    if (!ret)
    {
        dwErr = FUNC5();
        FUNC1(hKey);
        FUNC4(hCryptProv, 0);
        FUNC6("CryptExportKey call failed with %lx\n", dwErr);
        return NULL;
    }
    rkey = FUNC8(dwSize, 0);
    ret = FUNC2(hKey,
                         0,
                         PUBLICKEYBLOB,
                         0,
                         rkey,
                         &dwSize);
    if (!ret)
    {
        dwErr = FUNC5();
        FUNC7(rkey);
        FUNC1(hKey);
        FUNC4(hCryptProv, 0);
        FUNC6("CryptExportKey call failed with %lx\n", dwErr);
        return NULL;
    }
    FUNC1(hKey);
    FUNC4(hCryptProv, 0);
    return rkey;
}