
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cLowerQualityChainContext; scalar_t__* rgpLowerQualityChainContext; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef scalar_t__ PCCERT_CHAIN_CONTEXT ;
typedef TYPE_2__ CertificateChain ;
typedef int BOOL ;


 scalar_t__* CryptMemAlloc (int) ;
 scalar_t__* CryptMemRealloc (scalar_t__*,int) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_AddAlternateChainToChain(CertificateChain *chain,
 const CertificateChain *alternate)
{
    BOOL ret;

    if (chain->context.cLowerQualityChainContext)
        chain->context.rgpLowerQualityChainContext =
         CryptMemRealloc(chain->context.rgpLowerQualityChainContext,
         (chain->context.cLowerQualityChainContext + 1) *
         sizeof(PCCERT_CHAIN_CONTEXT));
    else
        chain->context.rgpLowerQualityChainContext =
         CryptMemAlloc(sizeof(PCCERT_CHAIN_CONTEXT));
    if (chain->context.rgpLowerQualityChainContext)
    {
        chain->context.rgpLowerQualityChainContext[
         chain->context.cLowerQualityChainContext++] =
         (PCCERT_CHAIN_CONTEXT)alternate;
        ret = TRUE;
    }
    else
        ret = FALSE;
    return ret;
}
