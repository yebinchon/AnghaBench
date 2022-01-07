
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash ;
struct TYPE_9__ {int member_0; int * member_1; } ;
struct TYPE_8__ {int dwCertEncodingType; } ;
typedef TYPE_1__* PCCERT_CONTEXT ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_2__ CRYPT_HASH_BLOB ;
typedef int BYTE ;


 int CERT_FIND_SHA1_HASH ;
 int CERT_HASH_PROP_ID ;
 TYPE_1__* CertFindCertificateInStore (int ,int ,int ,int ,TYPE_2__*,int *) ;
 scalar_t__ CertGetCertificateContextProperty (TYPE_1__*,int ,int *,int*) ;

__attribute__((used)) static PCCERT_CONTEXT CRYPT_FindCertInStore(HCERTSTORE store,
 PCCERT_CONTEXT cert)
{
    PCCERT_CONTEXT matching = ((void*)0);
    BYTE hash[20];
    DWORD size = sizeof(hash);

    if (CertGetCertificateContextProperty(cert, CERT_HASH_PROP_ID, hash, &size))
    {
        CRYPT_HASH_BLOB blob = { sizeof(hash), hash };

        matching = CertFindCertificateInStore(store, cert->dwCertEncodingType,
         0, CERT_FIND_SHA1_HASH, &blob, ((void*)0));
    }
    return matching;
}
