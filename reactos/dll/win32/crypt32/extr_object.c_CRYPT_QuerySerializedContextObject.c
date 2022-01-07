
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINE_CONTEXT_INTERFACE ;
struct TYPE_3__ {int pbData; int cbData; } ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_1__ const CERT_BLOB ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CERT_CONTEXT ;
 int CERT_QUERY_CONTENT_FLAG_SERIALIZED_CERT ;
 int CERT_QUERY_CONTENT_FLAG_SERIALIZED_CRL ;
 int CERT_QUERY_CONTENT_FLAG_SERIALIZED_CTL ;
 int CERT_QUERY_CONTENT_SERIALIZED_CERT ;
 int CERT_QUERY_CONTENT_SERIALIZED_CRL ;
 int CERT_QUERY_CONTENT_SERIALIZED_CTL ;


 int CERT_STORE_ALL_CONTEXT_FLAG ;



 int CRL_CONTEXT ;
 scalar_t__ CRYPT_ReadBlobFromFile (void const*,TYPE_1__ const*) ;
 void* CRYPT_ReadSerializedElement (int ,int ,int ,int*) ;
 int CTL_CONTEXT ;
 int CertDuplicateStore (int ) ;
 int Context_AddRef (int ) ;
 int Context_Release (int ) ;
 int CryptMemFree (int ) ;
 int ERROR_INVALID_DATA ;
 int E_INVALIDARG ;
 scalar_t__ FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,scalar_t__) ;
 scalar_t__ TRUE ;
 int X509_ASN_ENCODING ;
 int context_from_ptr (void const*) ;
 int hCertStore ;
 int offsetof (int ,int ) ;
 int * pCRLInterface ;
 int * pCTLInterface ;
 int * pCertInterface ;

__attribute__((used)) static BOOL CRYPT_QuerySerializedContextObject(DWORD dwObjectType,
 const void *pvObject, DWORD dwExpectedContentTypeFlags,
 DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, const void **ppvContext)
{
    CERT_BLOB fileBlob;
    const CERT_BLOB *blob;
    const WINE_CONTEXT_INTERFACE *contextInterface = ((void*)0);
    const void *context;
    DWORD contextType;
    BOOL ret;

    switch (dwObjectType)
    {
    case 131:



        ret = CRYPT_ReadBlobFromFile(pvObject, &fileBlob);
        blob = &fileBlob;
        break;
    case 132:
        blob = pvObject;
        ret = TRUE;
        break;
    default:
        SetLastError(E_INVALIDARG);
        ret = FALSE;
    }
    if (!ret)
        return FALSE;

    ret = FALSE;
    context = CRYPT_ReadSerializedElement(blob->pbData, blob->cbData,
     CERT_STORE_ALL_CONTEXT_FLAG, &contextType);
    if (context)
    {
        DWORD contentType, certStoreOffset;

        ret = TRUE;
        switch (contextType)
        {
        case 130:
            contextInterface = pCertInterface;
            contentType = CERT_QUERY_CONTENT_SERIALIZED_CERT;
            certStoreOffset = offsetof(CERT_CONTEXT, hCertStore);
            if (!(dwExpectedContentTypeFlags &
             CERT_QUERY_CONTENT_FLAG_SERIALIZED_CERT))
            {
                SetLastError(ERROR_INVALID_DATA);
                ret = FALSE;
                goto end;
            }
            break;
        case 129:
            contextInterface = pCRLInterface;
            contentType = CERT_QUERY_CONTENT_SERIALIZED_CRL;
            certStoreOffset = offsetof(CRL_CONTEXT, hCertStore);
            if (!(dwExpectedContentTypeFlags &
             CERT_QUERY_CONTENT_FLAG_SERIALIZED_CRL))
            {
                SetLastError(ERROR_INVALID_DATA);
                ret = FALSE;
                goto end;
            }
            break;
        case 128:
            contextInterface = pCTLInterface;
            contentType = CERT_QUERY_CONTENT_SERIALIZED_CTL;
            certStoreOffset = offsetof(CTL_CONTEXT, hCertStore);
            if (!(dwExpectedContentTypeFlags &
             CERT_QUERY_CONTENT_FLAG_SERIALIZED_CTL))
            {
                SetLastError(ERROR_INVALID_DATA);
                ret = FALSE;
                goto end;
            }
            break;
        default:
            SetLastError(ERROR_INVALID_DATA);
            ret = FALSE;
            goto end;
        }
        if (pdwMsgAndCertEncodingType)
            *pdwMsgAndCertEncodingType = X509_ASN_ENCODING;
        if (pdwContentType)
            *pdwContentType = contentType;
        if (phCertStore)
            *phCertStore = CertDuplicateStore(
             *(HCERTSTORE *)((const BYTE *)context + certStoreOffset));
        if (ppvContext)
        {
            *ppvContext = context;
            Context_AddRef(context_from_ptr(context));
        }
    }

end:
    if (contextInterface && context)
        Context_Release(context_from_ptr(context));
    if (blob == &fileBlob)
        CryptMemFree(blob->pbData);
    TRACE("returning %d\n", ret);
    return ret;
}
