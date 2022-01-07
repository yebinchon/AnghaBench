
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cbData; int pbData; } ;
typedef int PCCERT_CONTEXT ;
typedef int * LPBYTE ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CRYPT_HASH_BLOB ;
typedef int BOOL ;


 int CERT_SIGNATURE_HASH_PROP_ID ;
 int CertGetCertificateContextProperty (int ,int ,int *,scalar_t__*) ;
 int * CryptMemAlloc (scalar_t__) ;
 int CryptMemFree (int *) ;
 int FALSE ;
 int memcmp (int *,int ,scalar_t__) ;

__attribute__((used)) static BOOL compare_cert_by_signature_hash(PCCERT_CONTEXT pCertContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    const CRYPT_HASH_BLOB *hash = pvPara;
    DWORD size = 0;
    BOOL ret;

    ret = CertGetCertificateContextProperty(pCertContext,
     CERT_SIGNATURE_HASH_PROP_ID, ((void*)0), &size);
    if (ret && size == hash->cbData)
    {
        LPBYTE buf = CryptMemAlloc(size);

        if (buf)
        {
            CertGetCertificateContextProperty(pCertContext,
             CERT_SIGNATURE_HASH_PROP_ID, buf, &size);
            ret = !memcmp(buf, hash->pbData, size);
            CryptMemFree(buf);
        }
        else
            ret = FALSE;
    }
    else
        ret = FALSE;
    return ret;
}
