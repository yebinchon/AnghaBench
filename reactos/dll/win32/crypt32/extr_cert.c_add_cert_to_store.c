
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int hashToAdd ;
typedef int context_t ;
struct TYPE_25__ {TYPE_3__* vtbl; } ;
typedef TYPE_4__ WINECRYPT_CERTSTORE ;
struct TYPE_27__ {int member_0; int * member_1; } ;
struct TYPE_26__ {TYPE_1__* pCertInfo; int dwCertEncodingType; } ;
struct TYPE_23__ {scalar_t__ (* addContext ) (TYPE_4__*,int *,int *,int **,scalar_t__) ;} ;
struct TYPE_24__ {TYPE_2__ certs; } ;
struct TYPE_22__ {int NotBefore; } ;
typedef TYPE_5__ const* PCCERT_CONTEXT ;
typedef int DWORD ;
typedef TYPE_6__ CRYPT_HASH_BLOB ;
typedef TYPE_5__ CERT_CONTEXT ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CERT_FIND_SHA1_HASH ;
 int CERT_HASH_PROP_ID ;







 int CRYPT_E_EXISTS ;
 TYPE_5__* CertDuplicateCertificateContext (TYPE_5__ const*) ;
 TYPE_5__* CertFindCertificateInStore (TYPE_4__*,int ,int ,int ,TYPE_6__*,int *) ;
 scalar_t__ CertGetCertificateContextProperty (TYPE_5__ const*,int ,int *,int*) ;
 int CompareFileTime (int *,int *) ;
 int Context_CopyProperties (TYPE_5__ const*,TYPE_5__ const*) ;
 int Context_Release (int *) ;
 int E_INVALIDARG ;
 scalar_t__ FALSE ;
 int FIXME (char*,...) ;
 int SetLastError (int ) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int * context_from_ptr (TYPE_5__ const*) ;
 TYPE_5__ const* context_ptr (int *) ;
 scalar_t__ stub1 (TYPE_4__*,int *,int *,int **,scalar_t__) ;

__attribute__((used)) static BOOL add_cert_to_store(WINECRYPT_CERTSTORE *store, const CERT_CONTEXT *cert,
 DWORD add_disposition, BOOL use_link, PCCERT_CONTEXT *ret_context)
{
    const CERT_CONTEXT *existing = ((void*)0);
    BOOL ret = TRUE, inherit_props = FALSE;
    context_t *new_context = ((void*)0);

    switch (add_disposition)
    {
    case 134:
        break;
    case 133:
    case 130:
    case 129:
    case 128:
    case 132:
    case 131:
    {
        BYTE hashToAdd[20];
        DWORD size = sizeof(hashToAdd);

        ret = CertGetCertificateContextProperty(cert, CERT_HASH_PROP_ID,
         hashToAdd, &size);
        if (ret)
        {
            CRYPT_HASH_BLOB blob = { sizeof(hashToAdd), hashToAdd };

            existing = CertFindCertificateInStore(store, cert->dwCertEncodingType, 0,
             CERT_FIND_SHA1_HASH, &blob, ((void*)0));
        }
        break;
    }
    default:
        FIXME("Unimplemented add disposition %d\n", add_disposition);
        SetLastError(E_INVALIDARG);
        return FALSE;
    }

    switch (add_disposition)
    {
    case 134:
        break;
    case 133:
        if (existing)
        {
            TRACE("found matching certificate, not adding\n");
            SetLastError(CRYPT_E_EXISTS);
            return FALSE;
        }
        break;
    case 130:
        break;
    case 129:
        if (use_link)
            FIXME("CERT_STORE_ADD_REPLACE_EXISTING_INHERIT_PROPERTIES: semi-stub for links\n");
        if (existing)
            inherit_props = TRUE;
        break;
    case 128:
        if(use_link)
            FIXME("CERT_STORE_ADD_USE_EXISTING: semi-stub for links\n");
        if (existing)
        {
            Context_CopyProperties(existing, cert);
            if (ret_context)
                *ret_context = CertDuplicateCertificateContext(existing);
            return TRUE;
        }
        break;
    case 132:
        if (existing && CompareFileTime(&existing->pCertInfo->NotBefore, &cert->pCertInfo->NotBefore) >= 0)
        {
            TRACE("existing certificate is newer, not adding\n");
            SetLastError(CRYPT_E_EXISTS);
            return FALSE;
        }
        break;
    case 131:
        if (existing)
        {
            if (CompareFileTime(&existing->pCertInfo->NotBefore, &cert->pCertInfo->NotBefore) >= 0)
            {
                TRACE("existing certificate is newer, not adding\n");
                SetLastError(CRYPT_E_EXISTS);
                return FALSE;
            }
            inherit_props = TRUE;
        }
        break;
    }


    if(!store) {
        if(ret_context)
            *ret_context = CertDuplicateCertificateContext(cert);
        return TRUE;
    }

    ret = store->vtbl->certs.addContext(store, context_from_ptr(cert), existing ? context_from_ptr(existing) : ((void*)0),
     (ret_context || inherit_props) ? &new_context : ((void*)0), use_link);
    if(!ret)
        return FALSE;

    if(inherit_props)
        Context_CopyProperties(context_ptr(new_context), existing);

    if(ret_context)
        *ret_context = context_ptr(new_context);
    else if(new_context)
        Context_Release(new_context);

    TRACE("returning %d\n", ret);
    return ret;
}
