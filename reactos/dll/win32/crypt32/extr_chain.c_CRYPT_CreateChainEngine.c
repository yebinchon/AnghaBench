
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_8__ {int cbSize; scalar_t__ CycleDetectionModulus; int MaximumCachedCertificates; int dwUrlRetrievalTimeout; int dwFlags; void** rghAdditionalStore; int cAdditionalStore; void* hRestrictedRoot; void* hExclusiveRoot; } ;
struct TYPE_7__ {int ref; scalar_t__ CycleDetectionModulus; int MaximumCachedCertificates; int dwUrlRetrievalTimeout; int dwFlags; void* hWorld; void* hRoot; } ;
typedef void* HCERTSTORE ;
typedef TYPE_1__* HCERTCHAINENGINE ;
typedef int DWORD ;
typedef TYPE_1__ CertificateChainEngine ;
typedef TYPE_3__ CERT_CHAIN_ENGINE_CONFIG ;


 int ARRAY_SIZE (void**) ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_COLLECTION ;
 int CERT_STORE_PROV_SYSTEM_W ;
 int CRYPT_AddStoresToCollection (void*,int ,void**) ;
 int CRYPT_CloseStores (int ,void**) ;
 int CertCloseStore (void*,int ) ;
 void* CertDuplicateStore (void*) ;
 void* CertOpenStore (int ,int ,int ,int ,char const*) ;
 TYPE_1__* CryptMemAlloc (int) ;
 scalar_t__ DEFAULT_CYCLE_MODULUS ;
 char const* rootW ;

HCERTCHAINENGINE CRYPT_CreateChainEngine(HCERTSTORE root, DWORD system_store, const CERT_CHAIN_ENGINE_CONFIG *config)
{
    CertificateChainEngine *engine;
    HCERTSTORE worldStores[4];

    static const WCHAR caW[] = { 'C','A',0 };
    static const WCHAR myW[] = { 'M','y',0 };
    static const WCHAR trustW[] = { 'T','r','u','s','t',0 };

    if(!root) {
        if(config->cbSize >= sizeof(CERT_CHAIN_ENGINE_CONFIG) && config->hExclusiveRoot)
            root = CertDuplicateStore(config->hExclusiveRoot);
        else if (config->hRestrictedRoot)
            root = CertDuplicateStore(config->hRestrictedRoot);
        else
            root = CertOpenStore(CERT_STORE_PROV_SYSTEM_W, 0, 0, system_store, rootW);
        if(!root)
            return ((void*)0);
    }

    engine = CryptMemAlloc(sizeof(CertificateChainEngine));
    if(!engine) {
        CertCloseStore(root, 0);
        return ((void*)0);
    }

    engine->ref = 1;
    engine->hRoot = root;
    engine->hWorld = CertOpenStore(CERT_STORE_PROV_COLLECTION, 0, 0, CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
    worldStores[0] = CertDuplicateStore(engine->hRoot);
    worldStores[1] = CertOpenStore(CERT_STORE_PROV_SYSTEM_W, 0, 0, system_store, caW);
    worldStores[2] = CertOpenStore(CERT_STORE_PROV_SYSTEM_W, 0, 0, system_store, myW);
    worldStores[3] = CertOpenStore(CERT_STORE_PROV_SYSTEM_W, 0, 0, system_store, trustW);

    CRYPT_AddStoresToCollection(engine->hWorld, ARRAY_SIZE(worldStores), worldStores);
    CRYPT_AddStoresToCollection(engine->hWorld, config->cAdditionalStore, config->rghAdditionalStore);
    CRYPT_CloseStores(ARRAY_SIZE(worldStores), worldStores);

    engine->dwFlags = config->dwFlags;
    engine->dwUrlRetrievalTimeout = config->dwUrlRetrievalTimeout;
    engine->MaximumCachedCertificates = config->MaximumCachedCertificates;
    if(config->CycleDetectionModulus)
        engine->CycleDetectionModulus = config->CycleDetectionModulus;
    else
        engine->CycleDetectionModulus = DEFAULT_CYCLE_MODULUS;

    return engine;
}
