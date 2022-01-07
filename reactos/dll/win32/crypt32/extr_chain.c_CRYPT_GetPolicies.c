
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* pCertInfo; } ;
struct TYPE_8__ {int cbData; int pbData; } ;
struct TYPE_9__ {TYPE_2__ Value; } ;
struct TYPE_7__ {int rgExtension; int cExtension; } ;
typedef TYPE_3__* PCERT_EXTENSION ;
typedef TYPE_4__* PCCERT_CONTEXT ;
typedef int DWORD ;
typedef int CERT_POLICIES_INFO ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 TYPE_3__* CertFindExtension (int ,int ,int ) ;
 int CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,int **,int *) ;
 int X509_ASN_ENCODING ;
 int X509_CERT_POLICIES ;
 int szOID_KEY_USAGE ;

__attribute__((used)) static CERT_POLICIES_INFO *CRYPT_GetPolicies(PCCERT_CONTEXT cert)
{
    PCERT_EXTENSION ext;
    CERT_POLICIES_INFO *policies = ((void*)0);

    ext = CertFindExtension(szOID_KEY_USAGE, cert->pCertInfo->cExtension,
     cert->pCertInfo->rgExtension);
    if (ext)
    {
        DWORD size;

        CryptDecodeObjectEx(X509_ASN_ENCODING, X509_CERT_POLICIES,
         ext->Value.pbData, ext->Value.cbData, CRYPT_DECODE_ALLOC_FLAG, ((void*)0),
         &policies, &size);
    }
    return policies;
}
