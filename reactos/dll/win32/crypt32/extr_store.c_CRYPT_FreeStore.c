
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwMagic; scalar_t__ properties; } ;
typedef TYPE_1__ WINECRYPT_CERTSTORE ;


 int ContextPropertyList_Free (scalar_t__) ;
 int CryptMemFree (TYPE_1__*) ;

void CRYPT_FreeStore(WINECRYPT_CERTSTORE *store)
{
    if (store->properties)
        ContextPropertyList_Free(store->properties);
    store->dwMagic = 0;
    CryptMemFree(store);
}
