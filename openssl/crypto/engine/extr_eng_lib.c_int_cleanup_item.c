
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cb; } ;
typedef TYPE_1__ ENGINE_CLEANUP_ITEM ;
typedef int ENGINE_CLEANUP_CB ;


 int ENGINE_F_INT_CLEANUP_ITEM ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_malloc (int) ;

__attribute__((used)) static ENGINE_CLEANUP_ITEM *int_cleanup_item(ENGINE_CLEANUP_CB *cb)
{
    ENGINE_CLEANUP_ITEM *item;

    if ((item = OPENSSL_malloc(sizeof(*item))) == ((void*)0)) {
        ENGINEerr(ENGINE_F_INT_CLEANUP_ITEM, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    item->cb = cb;
    return item;
}
