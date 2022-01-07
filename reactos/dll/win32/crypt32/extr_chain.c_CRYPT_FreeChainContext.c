
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t cChain; TYPE_2__* rgpChain; } ;
struct TYPE_8__ {int world; TYPE_1__ context; } ;
typedef size_t DWORD ;
typedef TYPE_2__ CertificateChain ;


 int CRYPT_FreeLowerQualityChains (TYPE_2__*) ;
 int CRYPT_FreeSimpleChain (TYPE_2__) ;
 int CertCloseStore (int ,int ) ;
 int CryptMemFree (TYPE_2__*) ;

__attribute__((used)) static void CRYPT_FreeChainContext(CertificateChain *chain)
{
    DWORD i;

    CRYPT_FreeLowerQualityChains(chain);
    for (i = 0; i < chain->context.cChain; i++)
        CRYPT_FreeSimpleChain(chain->context.rgpChain[i]);
    CryptMemFree(chain->context.rgpChain);
    CertCloseStore(chain->world, 0);
    CryptMemFree(chain);
}
