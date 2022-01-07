
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pCertContext; } ;
typedef TYPE_1__* PCERT_CHAIN_ELEMENT ;


 int CertFreeCertificateContext (int ) ;
 int CryptMemFree (TYPE_1__*) ;

__attribute__((used)) static void CRYPT_FreeChainElement(PCERT_CHAIN_ELEMENT element)
{
    CertFreeCertificateContext(element->pCertContext);
    CryptMemFree(element);
}
