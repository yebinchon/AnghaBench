
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int HCRYPTMSG ;
typedef int HCERTSTORE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CERT_QUERY_CONTENT_SERIALIZED_STORE ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CRYPT_ReadSerializedStoreFromFile (scalar_t__,int ) ;
 int CertCloseStore (int ,int ) ;
 int CertDuplicateStore (int ) ;
 int CertOpenStore (int ,int ,int ,int ,int *) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int TRACE (char*,int ) ;
 int X509_ASN_ENCODING ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL CRYPT_QuerySerializedStoreFromFile(LPCWSTR fileName,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    HANDLE file;
    BOOL ret = FALSE;

    TRACE("%s\n", debugstr_w(fileName));
    file = CreateFileW(fileName, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
     OPEN_EXISTING, 0, ((void*)0));
    if (file != INVALID_HANDLE_VALUE)
    {
        HCERTSTORE store = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
         CERT_STORE_CREATE_NEW_FLAG, ((void*)0));

        ret = CRYPT_ReadSerializedStoreFromFile(file, store);
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
        CloseHandle(file);
    }
    TRACE("returning %d\n", ret);
    return ret;
}
