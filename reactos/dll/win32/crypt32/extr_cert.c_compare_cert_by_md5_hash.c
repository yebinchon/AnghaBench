
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hash ;
struct TYPE_2__ {scalar_t__ cbData; int pbData; } ;
typedef int PCCERT_CONTEXT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CRYPT_HASH_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int CERT_MD5_HASH_PROP_ID ;
 int CertGetCertificateContextProperty (int ,int ,int *,scalar_t__*) ;
 int FALSE ;
 int memcmp (int ,int *,scalar_t__) ;

__attribute__((used)) static BOOL compare_cert_by_md5_hash(PCCERT_CONTEXT pCertContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    BOOL ret;
    BYTE hash[16];
    DWORD size = sizeof(hash);

    ret = CertGetCertificateContextProperty(pCertContext,
     CERT_MD5_HASH_PROP_ID, hash, &size);
    if (ret)
    {
        const CRYPT_HASH_BLOB *pHash = pvPara;

        if (size == pHash->cbData)
            ret = !memcmp(pHash->pbData, hash, size);
        else
            ret = FALSE;
    }
    return ret;
}
