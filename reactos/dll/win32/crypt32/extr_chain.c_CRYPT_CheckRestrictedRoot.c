
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCCERT_CONTEXT ;
typedef scalar_t__ HCERTSTORE ;
typedef scalar_t__ BOOL ;


 int * CRYPT_FindCertInStore (scalar_t__,int *) ;
 int CertCloseStore (scalar_t__,int ) ;
 int * CertEnumCertificatesInStore (scalar_t__,int *) ;
 int CertFreeCertificateContext (int *) ;
 scalar_t__ CertOpenSystemStoreW (int ,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int rootW ;

__attribute__((used)) static BOOL CRYPT_CheckRestrictedRoot(HCERTSTORE store)
{
    BOOL ret = TRUE;

    if (store)
    {
        HCERTSTORE rootStore = CertOpenSystemStoreW(0, rootW);
        PCCERT_CONTEXT cert = ((void*)0), check;

        do {
            cert = CertEnumCertificatesInStore(store, cert);
            if (cert)
            {
                if (!(check = CRYPT_FindCertInStore(rootStore, cert)))
                    ret = FALSE;
                else
                    CertFreeCertificateContext(check);
            }
        } while (ret && cert);
        if (cert)
            CertFreeCertificateContext(cert);
        CertCloseStore(rootStore, 0);
    }
    return ret;
}
