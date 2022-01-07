
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * ptr; } ;
struct TYPE_12__ {TYPE_2__ u; TYPE_1__* vtbl; } ;
typedef TYPE_3__ context_t ;
typedef int WINE_STORE_LIST_ENTRY ;
struct TYPE_13__ {int hdr; } ;
typedef TYPE_4__ WINE_COLLECTIONSTORE ;
struct TYPE_10__ {TYPE_3__* (* clone ) (TYPE_3__*,int *,int ) ;} ;


 int TRUE ;
 TYPE_3__* stub1 (TYPE_3__*,int *,int ) ;

__attribute__((used)) static context_t *CRYPT_CollectionCreateContextFromChild(WINE_COLLECTIONSTORE *store,
 WINE_STORE_LIST_ENTRY *storeEntry, context_t *child)
{
    context_t *ret;

    ret = child->vtbl->clone(child, &store->hdr, TRUE);
    if (!ret)
        return ((void*)0);

    ret->u.ptr = storeEntry;
    return ret;
}
