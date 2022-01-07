
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int provInfo ;
struct TYPE_5__ {int dirty; void* type; int file; int memStore; void* dwOpenFlags; } ;
typedef TYPE_1__ WINE_FILESTOREINFO ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_6__ {int cbSize; TYPE_1__* hStoreProv; int rgpvStoreProvFunc; int cStoreProvFunc; int member_0; } ;
typedef int HCERTSTORE ;
typedef int HANDLE ;
typedef void* DWORD ;
typedef TYPE_2__ CERT_STORE_PROV_INFO ;


 int ARRAY_SIZE (int ) ;
 int * CRYPT_ProvCreateStore (void*,int ,TYPE_2__*) ;
 TYPE_1__* CryptMemAlloc (int) ;
 int FALSE ;
 int fileProvFuncs ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_CreateFileStore(DWORD dwFlags,
 HCERTSTORE memStore, HANDLE file, DWORD type)
{
    WINECRYPT_CERTSTORE *store = ((void*)0);
    WINE_FILESTOREINFO *info = CryptMemAlloc(sizeof(WINE_FILESTOREINFO));

    if (info)
    {
        CERT_STORE_PROV_INFO provInfo = { 0 };

        info->dwOpenFlags = dwFlags;
        info->memStore = memStore;
        info->file = file;
        info->type = type;
        info->dirty = FALSE;
        provInfo.cbSize = sizeof(provInfo);
        provInfo.cStoreProvFunc = ARRAY_SIZE(fileProvFuncs);
        provInfo.rgpvStoreProvFunc = fileProvFuncs;
        provInfo.hStoreProv = info;
        store = CRYPT_ProvCreateStore(dwFlags, memStore, &provInfo);
    }
    return store;
}
