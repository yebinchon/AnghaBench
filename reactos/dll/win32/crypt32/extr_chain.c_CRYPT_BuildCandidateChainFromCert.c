
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int cbSize; int cChain; scalar_t__ dwRevocationFreshnessTime; void* fHasRevocationFreshnessTime; int * rgpLowerQualityChainContext; scalar_t__ cLowerQualityChainContext; TYPE_2__** rgpChain; int TrustStatus; } ;
struct TYPE_13__ {int ref; TYPE_1__ context; int world; } ;
struct TYPE_12__ {int hWorld; } ;
struct TYPE_11__ {int TrustStatus; } ;
typedef TYPE_2__* PCERT_SIMPLE_CHAIN ;
typedef int PCCERT_CONTEXT ;
typedef int LPFILETIME ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_3__ CertificateChainEngine ;
typedef TYPE_4__ CertificateChain ;
typedef int CERT_CHAIN_CONTEXT ;
typedef void* BOOL ;


 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_COLLECTION ;
 int CRYPT_FreeSimpleChain (TYPE_2__*) ;
 void* CRYPT_GetSimpleChainForCert (TYPE_3__*,int ,int ,int ,int ,TYPE_2__**) ;
 int CertAddStoreToCollection (int ,int ,int ,int ) ;
 int CertOpenStore (int ,int ,int ,int ,int *) ;
 void* CryptMemAlloc (int) ;
 void* FALSE ;

__attribute__((used)) static BOOL CRYPT_BuildCandidateChainFromCert(CertificateChainEngine *engine,
 PCCERT_CONTEXT cert, LPFILETIME pTime, HCERTSTORE hAdditionalStore, DWORD flags,
 CertificateChain **ppChain)
{
    PCERT_SIMPLE_CHAIN simpleChain = ((void*)0);
    HCERTSTORE world;
    BOOL ret;

    world = CertOpenStore(CERT_STORE_PROV_COLLECTION, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
    CertAddStoreToCollection(world, engine->hWorld, 0, 0);
    if (hAdditionalStore)
        CertAddStoreToCollection(world, hAdditionalStore, 0, 0);



    if ((ret = CRYPT_GetSimpleChainForCert(engine, world, cert, pTime, flags, &simpleChain)))
    {
        CertificateChain *chain = CryptMemAlloc(sizeof(CertificateChain));

        if (chain)
        {
            chain->ref = 1;
            chain->world = world;
            chain->context.cbSize = sizeof(CERT_CHAIN_CONTEXT);
            chain->context.TrustStatus = simpleChain->TrustStatus;
            chain->context.cChain = 1;
            chain->context.rgpChain = CryptMemAlloc(sizeof(PCERT_SIMPLE_CHAIN));
            chain->context.rgpChain[0] = simpleChain;
            chain->context.cLowerQualityChainContext = 0;
            chain->context.rgpLowerQualityChainContext = ((void*)0);
            chain->context.fHasRevocationFreshnessTime = FALSE;
            chain->context.dwRevocationFreshnessTime = 0;
        }
        else
        {
            CRYPT_FreeSimpleChain(simpleChain);
            ret = FALSE;
        }
        *ppChain = chain;
    }
    return ret;
}
