
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int store_vtbl_t ;
struct TYPE_3__ {int ref; int * properties; int const* vtbl; int dwOpenFlags; int type; int dwMagic; } ;
typedef TYPE_1__ WINECRYPT_CERTSTORE ;
typedef int DWORD ;
typedef int CertStoreType ;


 int WINE_CRYPTCERTSTORE_MAGIC ;

void CRYPT_InitStore(WINECRYPT_CERTSTORE *store, DWORD dwFlags, CertStoreType type, const store_vtbl_t *vtbl)
{
    store->ref = 1;
    store->dwMagic = WINE_CRYPTCERTSTORE_MAGIC;
    store->type = type;
    store->dwOpenFlags = dwFlags;
    store->vtbl = vtbl;
    store->properties = ((void*)0);
}
