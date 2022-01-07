
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCCERT_CONTEXT ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef scalar_t__ (* CertCompareFunc ) (int *,int ,int ,void const*) ;
typedef scalar_t__ BOOL ;


 int * CertEnumCertificatesInStore (int ,int *) ;
 scalar_t__ FALSE ;

__attribute__((used)) static inline PCCERT_CONTEXT cert_compare_certs_in_store(HCERTSTORE store,
 PCCERT_CONTEXT prev, CertCompareFunc compare, DWORD dwType, DWORD dwFlags,
 const void *pvPara)
{
    BOOL matches = FALSE;
    PCCERT_CONTEXT ret;

    ret = prev;
    do {
        ret = CertEnumCertificatesInStore(store, ret);
        if (ret)
            matches = compare(ret, dwType, dwFlags, pvPara);
    } while (ret != ((void*)0) && !matches);
    return ret;
}
