
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int cbSize; } ;
typedef TYPE_1__* PCERT_SIMPLE_CHAIN ;
typedef int PCCERT_CONTEXT ;
typedef int LPFILETIME ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef int CertificateChainEngine ;
typedef int CERT_SIMPLE_CHAIN ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_AddCertToSimpleChain (int *,TYPE_1__*,int ,int ) ;
 scalar_t__ CRYPT_BuildSimpleChain (int *,int ,int ,TYPE_1__*) ;
 int CRYPT_CheckSimpleChain (int *,TYPE_1__*,int ) ;
 int CRYPT_FreeSimpleChain (TYPE_1__*) ;
 TYPE_1__* CryptMemAlloc (int) ;
 scalar_t__ FALSE ;
 int TRACE (char*,int *,int ,int ,int ) ;
 int debugstr_filetime (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL CRYPT_GetSimpleChainForCert(CertificateChainEngine *engine,
 HCERTSTORE world, PCCERT_CONTEXT cert, LPFILETIME pTime, DWORD flags,
 PCERT_SIMPLE_CHAIN *ppChain)
{
    BOOL ret = FALSE;
    PCERT_SIMPLE_CHAIN chain;

    TRACE("(%p, %p, %p, %s)\n", engine, world, cert, debugstr_filetime(pTime));

    chain = CryptMemAlloc(sizeof(CERT_SIMPLE_CHAIN));
    if (chain)
    {
        memset(chain, 0, sizeof(CERT_SIMPLE_CHAIN));
        chain->cbSize = sizeof(CERT_SIMPLE_CHAIN);
        ret = CRYPT_AddCertToSimpleChain(engine, chain, cert, 0);
        if (ret)
        {
            ret = CRYPT_BuildSimpleChain(engine, world, flags, chain);
            if (ret)
                CRYPT_CheckSimpleChain(engine, chain, pTime);
        }
        if (!ret)
        {
            CRYPT_FreeSimpleChain(chain);
            chain = ((void*)0);
        }
        *ppChain = chain;
    }
    return ret;
}
