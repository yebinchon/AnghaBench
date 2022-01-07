
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cBlob; TYPE_1__* rgBlob; } ;
struct TYPE_7__ {int pbData; } ;
typedef void* HCERTSTORE ;
typedef size_t DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef TYPE_2__ CRYPT_BLOB_ARRAY ;
typedef scalar_t__ BOOL ;
typedef int (* AddContextToStore ) (void*,void const*,int ,int *) ;


 int CERT_QUERY_FORMAT_FLAG_BINARY ;
 int CERT_QUERY_OBJECT_BLOB ;
 int CERT_STORE_ADD_ALWAYS ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CRYPT_E_NO_MATCH ;
 void* CertOpenStore (int ,int ,int ,int ,int *) ;
 int CryptMemFree (int ) ;
 scalar_t__ CryptQueryObject (int ,TYPE_1__*,size_t,int ,int ,int *,int *,int *,int *,int *,void const**) ;
 int ERROR_INVALID_DATA ;
 scalar_t__ FALSE ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 scalar_t__ decode_base64_blob (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static BOOL CRYPT_CreateContext(const CRYPT_BLOB_ARRAY *pObject,
 DWORD dwExpectedContentTypeFlags, AddContextToStore addFunc, void **ppvContext)
{
    BOOL ret = TRUE;
    CRYPT_DATA_BLOB blob;

    if (!pObject->cBlob)
    {
        SetLastError(ERROR_INVALID_DATA);
        *ppvContext = ((void*)0);
        ret = FALSE;
    }
    else if (pObject->cBlob == 1)
    {
        if (decode_base64_blob(&pObject->rgBlob[0], &blob))
        {
            ret = CryptQueryObject(CERT_QUERY_OBJECT_BLOB, &blob,
             dwExpectedContentTypeFlags, CERT_QUERY_FORMAT_FLAG_BINARY, 0,
             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), (const void **)ppvContext);
            CryptMemFree(blob.pbData);
        }
        else
        {
            ret = CryptQueryObject(CERT_QUERY_OBJECT_BLOB, &pObject->rgBlob[0],
             dwExpectedContentTypeFlags, CERT_QUERY_FORMAT_FLAG_BINARY, 0,
             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), (const void **)ppvContext);
        }
        if (!ret)
        {
            SetLastError(CRYPT_E_NO_MATCH);
            ret = FALSE;
        }
    }
    else
    {
        HCERTSTORE store = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
         CERT_STORE_CREATE_NEW_FLAG, ((void*)0));

        if (store)
        {
            DWORD i;
            const void *context;

            for (i = 0; i < pObject->cBlob; i++)
            {
                if (decode_base64_blob(&pObject->rgBlob[i], &blob))
                {
                    ret = CryptQueryObject(CERT_QUERY_OBJECT_BLOB, &blob,
                     dwExpectedContentTypeFlags, CERT_QUERY_FORMAT_FLAG_BINARY,
                     0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &context);
                    CryptMemFree(blob.pbData);
                }
                else
                {
                    ret = CryptQueryObject(CERT_QUERY_OBJECT_BLOB,
                     &pObject->rgBlob[i], dwExpectedContentTypeFlags,
                     CERT_QUERY_FORMAT_FLAG_BINARY, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                     ((void*)0), &context);
                }
                if (ret)
                {
                    if (!addFunc(store, context, CERT_STORE_ADD_ALWAYS, ((void*)0)))
                        ret = FALSE;
                }
                else
                {
                    SetLastError(CRYPT_E_NO_MATCH);
                    ret = FALSE;
                }
            }
        }
        else
            ret = FALSE;
        *ppvContext = store;
    }
    return ret;
}
