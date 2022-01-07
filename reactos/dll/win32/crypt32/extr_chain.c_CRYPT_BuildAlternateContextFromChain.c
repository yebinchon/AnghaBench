
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;


struct TYPE_23__ {int cLowerQualityChainContext; int cChain; TYPE_15__** rgpChain; int TrustStatus; scalar_t__* rgpLowerQualityChainContext; } ;
struct TYPE_25__ {TYPE_2__ context; int world; } ;
struct TYPE_24__ {int hCertStore; } ;
struct TYPE_22__ {TYPE_3__* pCertContext; } ;
struct TYPE_21__ {int cElement; int TrustStatus; TYPE_1__** rgpElement; } ;
typedef TYPE_3__* PCCERT_CONTEXT ;
typedef int LPFILETIME ;
typedef int HCERTSTORE ;
typedef size_t DWORD ;
typedef int CertificateChainEngine ;
typedef TYPE_4__ CertificateChain ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_AddCertToSimpleChain (int *,TYPE_15__*,TYPE_3__*,size_t) ;
 scalar_t__ CRYPT_BuildSimpleChain (int *,int ,size_t,TYPE_15__*) ;
 int CRYPT_CheckSimpleChain (int *,TYPE_15__*,int ) ;
 int CRYPT_CombineTrustStatus (int *,int *) ;
 TYPE_4__* CRYPT_CopyChainToElement (TYPE_4__*,size_t,size_t) ;
 int CRYPT_FreeChainContext (TYPE_4__*) ;
 TYPE_3__* CRYPT_GetIssuer (int *,int ,TYPE_3__*,TYPE_3__*,size_t,size_t*) ;
 TYPE_3__* CertDuplicateCertificateContext (TYPE_3__*) ;
 int CertFreeCertificateContext (TYPE_3__*) ;
 int TRACE (char*,TYPE_4__*,...) ;
 int debugstr_filetime (int ) ;

__attribute__((used)) static CertificateChain *CRYPT_BuildAlternateContextFromChain(
 CertificateChainEngine *engine, LPFILETIME pTime, HCERTSTORE hAdditionalStore,
 DWORD flags, CertificateChain *chain)
{
    CertificateChain *alternate;

    TRACE("(%p, %s, %p, %p)\n", engine, debugstr_filetime(pTime),
     hAdditionalStore, chain);




    if (chain->context.cLowerQualityChainContext)
        chain = (CertificateChain*)chain->context.rgpLowerQualityChainContext[
         chain->context.cLowerQualityChainContext - 1];

    if (chain->context.cChain <= 1 && chain->context.rgpChain[0]->cElement <= 1)
        alternate = ((void*)0);
    else
    {
        DWORD i, j, infoStatus;
        PCCERT_CONTEXT alternateIssuer = ((void*)0);

        alternate = ((void*)0);
        for (i = 0; !alternateIssuer && i < chain->context.cChain; i++)
            for (j = 0; !alternateIssuer &&
             j < chain->context.rgpChain[i]->cElement - 1; j++)
            {
                PCCERT_CONTEXT subject =
                 chain->context.rgpChain[i]->rgpElement[j]->pCertContext;
                PCCERT_CONTEXT prevIssuer = CertDuplicateCertificateContext(
                 chain->context.rgpChain[i]->rgpElement[j + 1]->pCertContext);

                alternateIssuer = CRYPT_GetIssuer(engine, prevIssuer->hCertStore,
                 subject, prevIssuer, flags, &infoStatus);
            }
        if (alternateIssuer)
        {
            i--;
            j--;
            alternate = CRYPT_CopyChainToElement(chain, i, j);
            if (alternate)
            {
                BOOL ret = CRYPT_AddCertToSimpleChain(engine,
                 alternate->context.rgpChain[i], alternateIssuer, infoStatus);




                CertFreeCertificateContext(alternateIssuer);
                if (ret)
                {
                    ret = CRYPT_BuildSimpleChain(engine, alternate->world,
                     flags, alternate->context.rgpChain[i]);
                    if (ret)
                        CRYPT_CheckSimpleChain(engine,
                         alternate->context.rgpChain[i], pTime);
                    CRYPT_CombineTrustStatus(&alternate->context.TrustStatus,
                     &alternate->context.rgpChain[i]->TrustStatus);
                }
                if (!ret)
                {
                    CRYPT_FreeChainContext(alternate);
                    alternate = ((void*)0);
                }
            }
        }
    }
    TRACE("%p\n", alternate);
    return alternate;
}
