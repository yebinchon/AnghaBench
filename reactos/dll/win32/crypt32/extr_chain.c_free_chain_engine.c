
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hRoot; int hWorld; int ref; } ;
typedef TYPE_1__ CertificateChainEngine ;


 int CertCloseStore (int ,int ) ;
 int CryptMemFree (TYPE_1__*) ;
 scalar_t__ InterlockedDecrement (int *) ;

__attribute__((used)) static void free_chain_engine(CertificateChainEngine *engine)
{
    if(!engine || InterlockedDecrement(&engine->ref))
        return;

    CertCloseStore(engine->hWorld, 0);
    CertCloseStore(engine->hRoot, 0);
    CryptMemFree(engine);
}
