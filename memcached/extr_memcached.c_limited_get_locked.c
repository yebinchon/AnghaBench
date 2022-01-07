
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ refcount; } ;
typedef TYPE_1__ item ;
typedef int conn ;


 scalar_t__ IT_REFCOUNT_LIMIT ;
 int do_item_remove (TYPE_1__*) ;
 TYPE_1__* item_get_locked (char*,size_t,int *,int,int *) ;
 int item_unlock (int ) ;

__attribute__((used)) static inline item* limited_get_locked(char *key, size_t nkey, conn *c, bool do_update, uint32_t *hv) {
    item *it;
    it = item_get_locked(key, nkey, c, do_update, hv);
    if (it && it->refcount > IT_REFCOUNT_LIMIT) {
        do_item_remove(it);
        it = ((void*)0);
        item_unlock(*hv);
    }
    return it;
}
