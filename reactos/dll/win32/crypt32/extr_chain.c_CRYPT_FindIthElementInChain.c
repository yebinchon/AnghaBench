
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t cChain; TYPE_1__** rgpChain; } ;
struct TYPE_4__ {size_t cElement; int ** rgpElement; } ;
typedef int * PCERT_CHAIN_ELEMENT ;
typedef size_t DWORD ;
typedef TYPE_2__ CERT_CHAIN_CONTEXT ;



__attribute__((used)) static PCERT_CHAIN_ELEMENT CRYPT_FindIthElementInChain(
 const CERT_CHAIN_CONTEXT *chain, DWORD i)
{
    DWORD j, iElement;
    PCERT_CHAIN_ELEMENT element = ((void*)0);

    for (j = 0, iElement = 0; !element && j < chain->cChain; j++)
    {
        if (iElement + chain->rgpChain[j]->cElement < i)
            iElement += chain->rgpChain[j]->cElement;
        else
            element = chain->rgpChain[j]->rgpElement[i - iElement];
    }
    return element;
}
