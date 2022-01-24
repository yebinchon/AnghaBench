#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  dwCertEncodingType; } ;
struct TYPE_12__ {unsigned int cUrl; int /*<<< orphan*/ * rgwszUrl; } ;
struct TYPE_11__ {scalar_t__ hWorld; } ;
typedef  int /*<<< orphan*/ * PCCERT_CONTEXT ;
typedef  scalar_t__ HCERTSTORE ;
typedef  int DWORD ;
typedef  TYPE_1__ CertificateChainEngine ;
typedef  TYPE_2__ CRYPT_URL_ARRAY ;
typedef  TYPE_3__ CERT_CONTEXT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CERT_CHAIN_CACHE_ONLY_URL_RETRIEVAL ; 
 int /*<<< orphan*/  CERT_STORE_ADD_NEW ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int /*<<< orphan*/  CONTEXT_OID_CERTIFICATE ; 
 int /*<<< orphan*/  CRYPT_AIA_RETRIEVAL ; 
 int /*<<< orphan*/  CRYPT_CACHE_ONLY_RETRIEVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  URL_OID_CERTIFICATE_ISSUER ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PCCERT_CONTEXT FUNC13(const CertificateChainEngine *engine, const CERT_CONTEXT *cert,
        HCERTSTORE store, DWORD type, void *para, DWORD flags, PCCERT_CONTEXT prev_issuer)
{
    CRYPT_URL_ARRAY *urls;
    PCCERT_CONTEXT issuer;
    DWORD size;
    BOOL res;

    issuer = FUNC2(store, cert->dwCertEncodingType, 0, type, para, prev_issuer);
    if(issuer) {
        FUNC11("Found in store %p\n", issuer);
        return issuer;
    }

    /* FIXME: For alternate issuers, we don't search world store nor try to retrieve issuer from URL.
     * This needs more tests.
     */
    if(prev_issuer)
        return NULL;

    if(engine->hWorld) {
        issuer = FUNC2(engine->hWorld, cert->dwCertEncodingType, 0, type, para, NULL);
        if(issuer) {
            FUNC11("Found in world %p\n", issuer);
            return issuer;
        }
    }

    res = FUNC5(URL_OID_CERTIFICATE_ISSUER, (void*)cert, 0, NULL, &size, NULL, NULL, NULL);
    if(!res)
        return NULL;

    urls = FUNC9(FUNC8(), 0, size);
    if(!urls)
        return NULL;

    res = FUNC5(URL_OID_CERTIFICATE_ISSUER, (void*)cert, 0, urls, &size, NULL, NULL, NULL);
    if(res)
    {
        CERT_CONTEXT *new_cert;
        HCERTSTORE new_store;
        unsigned i;

        for(i=0; i < urls->cUrl; i++)
        {
            FUNC11("Trying URL %s\n", FUNC12(urls->rgwszUrl[i]));

            res = FUNC6(urls->rgwszUrl[i], CONTEXT_OID_CERTIFICATE,
             (flags & CERT_CHAIN_CACHE_ONLY_URL_RETRIEVAL) ? CRYPT_CACHE_ONLY_RETRIEVAL : CRYPT_AIA_RETRIEVAL,
             0, (void**)&new_cert, NULL, NULL, NULL, NULL);
            if(!res)
            {
                FUNC11("CryptRetrieveObjectByUrlW failed: %u\n", FUNC7());
                continue;
            }

            /* FIXME: Use new_cert->hCertStore once cert ref count bug is fixed. */
            new_store = FUNC4(CERT_STORE_PROV_MEMORY, 0, 0, CERT_STORE_CREATE_NEW_FLAG, NULL);
            FUNC0(new_store, new_cert, CERT_STORE_ADD_NEW, NULL);
            issuer = FUNC2(new_store, cert->dwCertEncodingType, 0, type, para, NULL);
            FUNC3(new_cert);
            FUNC1(new_store, 0);
            if(issuer)
            {
                FUNC11("Found downloaded issuer %p\n", issuer);
                break;
            }
        }
    }

    FUNC10(FUNC8(), 0, urls);
    return issuer;
}