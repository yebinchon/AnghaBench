
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pbData; int cbData; } ;
typedef int HCRYPTMSG ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef scalar_t__ BOOL ;


 int CERT_QUERY_CONTENT_SERIALIZED_STORE ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 scalar_t__ CRYPT_ReadSerializedStoreFromBlob (TYPE_1__ const*,int ) ;
 int CertCloseStore (int ,int ) ;
 int CertDuplicateStore (int ) ;
 int CertOpenStore (int ,int ,int ,int ,int *) ;
 int TRACE (char*,scalar_t__,...) ;
 int X509_ASN_ENCODING ;

__attribute__((used)) static BOOL CRYPT_QuerySerializedStoreFromBlob(const CRYPT_DATA_BLOB *blob,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    HCERTSTORE store = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
    BOOL ret;

    TRACE("(%d, %p)\n", blob->cbData, blob->pbData);

    ret = CRYPT_ReadSerializedStoreFromBlob(blob, store);
    if (ret)
    {
        if (pdwMsgAndCertEncodingType)
            *pdwMsgAndCertEncodingType = X509_ASN_ENCODING;
        if (pdwContentType)
            *pdwContentType = CERT_QUERY_CONTENT_SERIALIZED_STORE;
        if (phCertStore)
            *phCertStore = CertDuplicateStore(store);
    }
    CertCloseStore(store, 0);
    TRACE("returning %d\n", ret);
    return ret;
}
