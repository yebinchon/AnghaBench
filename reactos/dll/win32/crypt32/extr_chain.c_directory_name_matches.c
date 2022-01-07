
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int cbData; int pbData; } ;
struct TYPE_8__ {size_t cRDN; int * rgRDN; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CERT_NAME_INFO ;
typedef TYPE_2__ CERT_NAME_BLOB ;
typedef scalar_t__ BOOL ;


 int CERT_CASE_INSENSITIVE_IS_RDN_ATTRS_FLAG ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ CertIsRDNAttrsInCertificateName (int ,int ,TYPE_2__*,int *) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,TYPE_1__**,size_t*) ;
 scalar_t__ FALSE ;
 int LocalFree (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int X509_ASN_ENCODING ;
 int X509_NAME ;

__attribute__((used)) static BOOL directory_name_matches(const CERT_NAME_BLOB *constraint,
 const CERT_NAME_BLOB *name)
{
    CERT_NAME_INFO *constraintName;
    DWORD size;
    BOOL match = FALSE;

    if (CryptDecodeObjectEx(X509_ASN_ENCODING, X509_NAME, constraint->pbData,
     constraint->cbData, CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &constraintName, &size))
    {
        DWORD i;

        match = TRUE;
        for (i = 0; match && i < constraintName->cRDN; i++)
            match = CertIsRDNAttrsInCertificateName(X509_ASN_ENCODING,
             CERT_CASE_INSENSITIVE_IS_RDN_ATTRS_FLAG,
             (CERT_NAME_BLOB *)name, &constraintName->rgRDN[i]);
        LocalFree(constraintName);
    }
    return match;
}
