
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int dwInfoStatus; } ;
struct TYPE_14__ {int CycleDetectionModulus; } ;
struct TYPE_13__ {int cbSize; TYPE_8__ TrustStatus; int pCertContext; } ;
struct TYPE_12__ {int cElement; int TrustStatus; TYPE_2__** rgpElement; } ;
typedef TYPE_1__* PCERT_SIMPLE_CHAIN ;
typedef TYPE_2__* PCERT_CHAIN_ELEMENT ;
typedef int PCCERT_CONTEXT ;
typedef int DWORD ;
typedef TYPE_3__ CertificateChainEngine ;
typedef int CERT_CHAIN_ELEMENT ;
typedef int BOOL ;


 int CRYPT_CheckSimpleChainForCycles (TYPE_1__*) ;
 int CRYPT_CombineTrustStatus (int *,TYPE_8__*) ;
 int CertDuplicateCertificateContext (int ) ;
 void* CryptMemAlloc (int) ;
 int CryptMemFree (TYPE_2__*) ;
 TYPE_2__** CryptMemRealloc (TYPE_2__**,int) ;
 int FALSE ;
 int TRUE ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static BOOL CRYPT_AddCertToSimpleChain(const CertificateChainEngine *engine,
 PCERT_SIMPLE_CHAIN chain, PCCERT_CONTEXT cert, DWORD subjectInfoStatus)
{
    BOOL ret = FALSE;
    PCERT_CHAIN_ELEMENT element = CryptMemAlloc(sizeof(CERT_CHAIN_ELEMENT));

    if (element)
    {
        if (!chain->cElement)
            chain->rgpElement = CryptMemAlloc(sizeof(PCERT_CHAIN_ELEMENT));
        else
            chain->rgpElement = CryptMemRealloc(chain->rgpElement,
             (chain->cElement + 1) * sizeof(PCERT_CHAIN_ELEMENT));
        if (chain->rgpElement)
        {
            chain->rgpElement[chain->cElement++] = element;
            memset(element, 0, sizeof(CERT_CHAIN_ELEMENT));
            element->cbSize = sizeof(CERT_CHAIN_ELEMENT);
            element->pCertContext = CertDuplicateCertificateContext(cert);
            if (chain->cElement > 1)
                chain->rgpElement[chain->cElement - 2]->TrustStatus.dwInfoStatus
                 = subjectInfoStatus;

            if (!(chain->cElement % engine->CycleDetectionModulus))
            {
                CRYPT_CheckSimpleChainForCycles(chain);



                element = chain->rgpElement[chain->cElement - 1];
            }
            CRYPT_CombineTrustStatus(&chain->TrustStatus,
             &element->TrustStatus);
            ret = TRUE;
        }
        else
            CryptMemFree(element);
    }
    return ret;
}
