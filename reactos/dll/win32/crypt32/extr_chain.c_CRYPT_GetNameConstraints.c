
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cbData; int pbData; } ;
struct TYPE_8__ {TYPE_1__ Value; } ;
struct TYPE_7__ {int rgExtension; int cExtension; } ;
typedef int DWORD ;
typedef int CERT_NAME_CONSTRAINTS_INFO ;
typedef TYPE_2__ CERT_INFO ;
typedef TYPE_3__ CERT_EXTENSION ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int CRYPT_DECODE_NOCOPY_FLAG ;
 TYPE_3__* CertFindExtension (int ,int ,int ) ;
 int CryptDecodeObjectEx (int ,int ,int ,int ,int,int *,int **,int *) ;
 int X509_ASN_ENCODING ;
 int X509_NAME_CONSTRAINTS ;
 int szOID_NAME_CONSTRAINTS ;

__attribute__((used)) static CERT_NAME_CONSTRAINTS_INFO *CRYPT_GetNameConstraints(CERT_INFO *cert)
{
    CERT_NAME_CONSTRAINTS_INFO *info = ((void*)0);

    CERT_EXTENSION *ext;

    if ((ext = CertFindExtension(szOID_NAME_CONSTRAINTS, cert->cExtension,
     cert->rgExtension)))
    {
        DWORD size;

        CryptDecodeObjectEx(X509_ASN_ENCODING, X509_NAME_CONSTRAINTS,
         ext->Value.pbData, ext->Value.cbData,
         CRYPT_DECODE_ALLOC_FLAG | CRYPT_DECODE_NOCOPY_FLAG, ((void*)0), &info,
         &size);
    }
    return info;
}
