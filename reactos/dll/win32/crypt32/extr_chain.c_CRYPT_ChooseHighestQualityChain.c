
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t cLowerQualityChainContext; scalar_t__* rgpLowerQualityChainContext; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
typedef scalar_t__ PCCERT_CHAIN_CONTEXT ;
typedef size_t DWORD ;
typedef TYPE_2__ CertificateChain ;


 scalar_t__ CRYPT_ChainQuality (TYPE_2__*) ;

__attribute__((used)) static CertificateChain *CRYPT_ChooseHighestQualityChain(
 CertificateChain *chain)
{
    DWORD i;







    for (i = 0; i < chain->context.cLowerQualityChainContext; i++)
    {
        CertificateChain *alternate =
         (CertificateChain*)chain->context.rgpLowerQualityChainContext[i];

        if (CRYPT_ChainQuality(alternate) > CRYPT_ChainQuality(chain))
        {
            alternate->context.cLowerQualityChainContext =
             chain->context.cLowerQualityChainContext;
            alternate->context.rgpLowerQualityChainContext =
             chain->context.rgpLowerQualityChainContext;
            alternate->context.rgpLowerQualityChainContext[i] =
             (PCCERT_CHAIN_CONTEXT)chain;
            chain->context.cLowerQualityChainContext = 0;
            chain->context.rgpLowerQualityChainContext = ((void*)0);
            chain = alternate;
        }
    }
    return chain;
}
