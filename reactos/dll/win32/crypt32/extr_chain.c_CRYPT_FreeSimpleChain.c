
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t cElement; struct TYPE_5__* rgpElement; } ;
typedef TYPE_1__* PCERT_SIMPLE_CHAIN ;
typedef size_t DWORD ;


 int CRYPT_FreeChainElement (TYPE_1__) ;
 int CryptMemFree (TYPE_1__*) ;

__attribute__((used)) static void CRYPT_FreeSimpleChain(PCERT_SIMPLE_CHAIN chain)
{
    DWORD i;

    for (i = 0; i < chain->cElement; i++)
        CRYPT_FreeChainElement(chain->rgpElement[i]);
    CryptMemFree(chain->rgpElement);
    CryptMemFree(chain);
}
