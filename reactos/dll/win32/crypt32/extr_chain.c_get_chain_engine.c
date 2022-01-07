
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int config ;
struct TYPE_3__ {int member_0; } ;
typedef scalar_t__ HCERTCHAINENGINE ;
typedef int CertificateChainEngine ;
typedef TYPE_1__ CERT_CHAIN_ENGINE_CONFIG ;
typedef int BOOL ;


 int CERT_SYSTEM_STORE_CURRENT_USER ;
 int CERT_SYSTEM_STORE_LOCAL_MACHINE ;
 scalar_t__ CRYPT_CreateChainEngine (int *,int ,TYPE_1__ const*) ;
 int CertFreeCertificateChainEngine (scalar_t__) ;
 scalar_t__ HCCE_CURRENT_USER ;
 scalar_t__ HCCE_LOCAL_MACHINE ;
 int InterlockedCompareExchangePointer (void**,scalar_t__,int *) ;
 scalar_t__ default_cu_engine ;
 scalar_t__ default_lm_engine ;

__attribute__((used)) static CertificateChainEngine *get_chain_engine(HCERTCHAINENGINE handle, BOOL allow_default)
{
    const CERT_CHAIN_ENGINE_CONFIG config = { sizeof(config) };

    if(handle == HCCE_CURRENT_USER) {
        if(!allow_default)
            return ((void*)0);

        if(!default_cu_engine) {
            handle = CRYPT_CreateChainEngine(((void*)0), CERT_SYSTEM_STORE_CURRENT_USER, &config);
            InterlockedCompareExchangePointer((void**)&default_cu_engine, handle, ((void*)0));
            if(default_cu_engine != handle)
                CertFreeCertificateChainEngine(handle);
        }

        return default_cu_engine;
    }

    if(handle == HCCE_LOCAL_MACHINE) {
        if(!allow_default)
            return ((void*)0);

        if(!default_lm_engine) {
            handle = CRYPT_CreateChainEngine(((void*)0), CERT_SYSTEM_STORE_LOCAL_MACHINE, &config);
            InterlockedCompareExchangePointer((void**)&default_lm_engine, handle, ((void*)0));
            if(default_lm_engine != handle)
                CertFreeCertificateChainEngine(handle);
        }

        return default_lm_engine;
    }

    return (CertificateChainEngine*)handle;
}
