
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cLowerQualityChainContext; int * rgpLowerQualityChainContext; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
typedef size_t DWORD ;
typedef TYPE_2__ CertificateChain ;


 int CertFreeCertificateChain (int ) ;
 int CryptMemFree (int *) ;

__attribute__((used)) static void CRYPT_FreeLowerQualityChains(CertificateChain *chain)
{
    DWORD i;

    for (i = 0; i < chain->context.cLowerQualityChainContext; i++)
        CertFreeCertificateChain(chain->context.rgpLowerQualityChainContext[i]);
    CryptMemFree(chain->context.rgpLowerQualityChainContext);
    chain->context.cLowerQualityChainContext = 0;
    chain->context.rgpLowerQualityChainContext = ((void*)0);
}
