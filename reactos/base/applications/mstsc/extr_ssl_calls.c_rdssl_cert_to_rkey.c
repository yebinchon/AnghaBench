
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_5__ {TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {int SubjectPublicKeyInfo; } ;
typedef TYPE_2__* PCCERT_CONTEXT ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CRYPT_NEWKEYSET ;
 scalar_t__ CryptAcquireContext (int *,char*,int ,int ,int ) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptExportKey (int ,int ,int ,int ,int *,scalar_t__*) ;
 scalar_t__ CryptImportPublicKeyInfoEx (int ,int,int *,int ,int ,int *,int *) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ GetLastError () ;
 int MS_ENHANCED_PROV ;
 scalar_t__ NTE_BAD_KEYSET ;
 int PKCS_7_ASN_ENCODING ;
 int PROV_RSA_FULL ;
 int PUBLICKEYBLOB ;
 int X509_ASN_ENCODING ;
 int error (char*,scalar_t__) ;
 int g_free (int *) ;
 int * g_malloc (scalar_t__,int ) ;

uint8 *rdssl_cert_to_rkey(PCCERT_CONTEXT cert, uint32 * key_len)
{
    HCRYPTPROV hCryptProv;
    HCRYPTKEY hKey;
    BOOL ret;
    BYTE * rkey;
    DWORD dwSize, dwErr;
    ret = CryptAcquireContext(&hCryptProv,
                              ((void*)0),
                              MS_ENHANCED_PROV,
                              PROV_RSA_FULL,
                              0);
    if (!ret)
    {
        dwErr = GetLastError();
        if (dwErr == NTE_BAD_KEYSET)
        {
            ret = CryptAcquireContext(&hCryptProv,
                                      L"MSTSC",
                                      MS_ENHANCED_PROV,
                                      PROV_RSA_FULL,
                                      CRYPT_NEWKEYSET);
        }
    }
    if (!ret)
    {
        dwErr = GetLastError();
        error("CryptAcquireContext call failed with %lx\n", dwErr);
        return ((void*)0);
    }
    ret = CryptImportPublicKeyInfoEx(hCryptProv,
                                     X509_ASN_ENCODING | PKCS_7_ASN_ENCODING,
                                     &(cert->pCertInfo->SubjectPublicKeyInfo),
                                     0,
                                     0,
                                     ((void*)0),
                                     &hKey);
    if (!ret)
    {
        dwErr = GetLastError();
        CryptReleaseContext(hCryptProv, 0);
        error("CryptImportPublicKeyInfoEx call failed with %lx\n", dwErr);
        return ((void*)0);
    }
    ret = CryptExportKey(hKey,
                         0,
                         PUBLICKEYBLOB,
                         0,
                         ((void*)0),
                         &dwSize);
    if (!ret)
    {
        dwErr = GetLastError();
        CryptDestroyKey(hKey);
        CryptReleaseContext(hCryptProv, 0);
        error("CryptExportKey call failed with %lx\n", dwErr);
        return ((void*)0);
    }
    rkey = g_malloc(dwSize, 0);
    ret = CryptExportKey(hKey,
                         0,
                         PUBLICKEYBLOB,
                         0,
                         rkey,
                         &dwSize);
    if (!ret)
    {
        dwErr = GetLastError();
        g_free(rkey);
        CryptDestroyKey(hKey);
        CryptReleaseContext(hCryptProv, 0);
        error("CryptExportKey call failed with %lx\n", dwErr);
        return ((void*)0);
    }
    CryptDestroyKey(hKey);
    CryptReleaseContext(hCryptProv, 0);
    return rkey;
}
