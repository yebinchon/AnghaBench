
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwStoreProvFlags; int * provControl; int * provDeleteCtl; int * provWriteCtl; int * provDeleteCrl; int * provWriteCrl; int * provDeleteCert; int * provWriteCert; int * provCloseStore; int hStoreProv; int * memStore; int hdr; } ;
typedef TYPE_1__ WINE_PROVIDERSTORE ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_6__ {int dwStoreProvFlags; size_t cStoreProvFunc; int ** rgpvStoreProvFunc; int hStoreProv; } ;
typedef int DWORD ;
typedef TYPE_2__ CERT_STORE_PROV_INFO ;


 size_t CERT_STORE_PROV_CLOSE_FUNC ;
 size_t CERT_STORE_PROV_CONTROL_FUNC ;
 size_t CERT_STORE_PROV_DELETE_CERT_FUNC ;
 size_t CERT_STORE_PROV_DELETE_CRL_FUNC ;
 size_t CERT_STORE_PROV_DELETE_CTL_FUNC ;
 int CERT_STORE_PROV_EXTERNAL_FLAG ;
 size_t CERT_STORE_PROV_WRITE_CERT_FUNC ;
 size_t CERT_STORE_PROV_WRITE_CRL_FUNC ;
 size_t CERT_STORE_PROV_WRITE_CTL_FUNC ;
 int CRYPT_InitStore (int *,int ,int ,int *) ;
 int CertCloseStore (int *,int ) ;
 TYPE_1__* CryptMemAlloc (int) ;
 int ProvStoreVtbl ;
 int StoreTypeProvider ;

WINECRYPT_CERTSTORE *CRYPT_ProvCreateStore(DWORD dwFlags,
 WINECRYPT_CERTSTORE *memStore, const CERT_STORE_PROV_INFO *pProvInfo)
{
    WINE_PROVIDERSTORE *ret = CryptMemAlloc(sizeof(WINE_PROVIDERSTORE));

    if (ret)
    {
        CRYPT_InitStore(&ret->hdr, dwFlags, StoreTypeProvider, &ProvStoreVtbl);
        ret->dwStoreProvFlags = pProvInfo->dwStoreProvFlags;
        if (ret->dwStoreProvFlags & CERT_STORE_PROV_EXTERNAL_FLAG)
        {
            CertCloseStore(memStore, 0);
            ret->memStore = ((void*)0);
        }
        else
            ret->memStore = memStore;
        ret->hStoreProv = pProvInfo->hStoreProv;
        if (pProvInfo->cStoreProvFunc > CERT_STORE_PROV_CLOSE_FUNC)
            ret->provCloseStore =
             pProvInfo->rgpvStoreProvFunc[CERT_STORE_PROV_CLOSE_FUNC];
        else
            ret->provCloseStore = ((void*)0);
        if (pProvInfo->cStoreProvFunc >
         CERT_STORE_PROV_WRITE_CERT_FUNC)
            ret->provWriteCert = pProvInfo->rgpvStoreProvFunc[
             CERT_STORE_PROV_WRITE_CERT_FUNC];
        else
            ret->provWriteCert = ((void*)0);
        if (pProvInfo->cStoreProvFunc >
         CERT_STORE_PROV_DELETE_CERT_FUNC)
            ret->provDeleteCert = pProvInfo->rgpvStoreProvFunc[
             CERT_STORE_PROV_DELETE_CERT_FUNC];
        else
            ret->provDeleteCert = ((void*)0);
        if (pProvInfo->cStoreProvFunc >
         CERT_STORE_PROV_WRITE_CRL_FUNC)
            ret->provWriteCrl = pProvInfo->rgpvStoreProvFunc[
             CERT_STORE_PROV_WRITE_CRL_FUNC];
        else
            ret->provWriteCrl = ((void*)0);
        if (pProvInfo->cStoreProvFunc >
         CERT_STORE_PROV_DELETE_CRL_FUNC)
            ret->provDeleteCrl = pProvInfo->rgpvStoreProvFunc[
             CERT_STORE_PROV_DELETE_CRL_FUNC];
        else
            ret->provDeleteCrl = ((void*)0);
        if (pProvInfo->cStoreProvFunc >
         CERT_STORE_PROV_WRITE_CTL_FUNC)
            ret->provWriteCtl = pProvInfo->rgpvStoreProvFunc[
             CERT_STORE_PROV_WRITE_CTL_FUNC];
        else
            ret->provWriteCtl = ((void*)0);
        if (pProvInfo->cStoreProvFunc >
         CERT_STORE_PROV_DELETE_CTL_FUNC)
            ret->provDeleteCtl = pProvInfo->rgpvStoreProvFunc[
             CERT_STORE_PROV_DELETE_CTL_FUNC];
        else
            ret->provDeleteCtl = ((void*)0);
        if (pProvInfo->cStoreProvFunc >
         CERT_STORE_PROV_CONTROL_FUNC)
            ret->provControl = pProvInfo->rgpvStoreProvFunc[
             CERT_STORE_PROV_CONTROL_FUNC];
        else
            ret->provControl = ((void*)0);
    }
    return (WINECRYPT_CERTSTORE*)ret;
}
