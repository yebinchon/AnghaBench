
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buf ;
struct TYPE_10__ {TYPE_1__* pCertInfo; } ;
struct TYPE_9__ {int Value; int dwValueType; } ;
struct TYPE_8__ {int cbData; int pbData; } ;
struct TYPE_7__ {TYPE_2__ Subject; } ;
typedef TYPE_3__* PCERT_RDN_ATTR ;
typedef TYPE_4__* PCCERT_CONTEXT ;
typedef int DWORD ;
typedef int CERT_NAME_INFO ;
typedef scalar_t__ BOOL ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int CRYPT_DECODE_NOCOPY_FLAG ;
 TYPE_3__* CertFindRDNAttr (int ,int *) ;
 int CertRDNValueToStrA (int ,int *,char*,int) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int,int *,int **,int *) ;
 int LocalFree (int *) ;
 int X509_ASN_ENCODING ;
 int X509_NAME ;
 int szOID_COMMON_NAME ;

__attribute__((used)) static const char *get_cert_common_name(PCCERT_CONTEXT cert)
{
    static char buf[1024];
    const char *name = ((void*)0);
    CERT_NAME_INFO *nameInfo;
    DWORD size;
    BOOL ret = CryptDecodeObjectEx(X509_ASN_ENCODING, X509_NAME,
     cert->pCertInfo->Subject.pbData, cert->pCertInfo->Subject.cbData,
     CRYPT_DECODE_NOCOPY_FLAG | CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &nameInfo,
     &size);

    if (ret)
    {
        PCERT_RDN_ATTR commonName = CertFindRDNAttr(szOID_COMMON_NAME,
         nameInfo);

        if (commonName)
        {
            CertRDNValueToStrA(commonName->dwValueType,
             &commonName->Value, buf, sizeof(buf));
            name = buf;
        }
        LocalFree(nameInfo);
    }
    return name;
}
