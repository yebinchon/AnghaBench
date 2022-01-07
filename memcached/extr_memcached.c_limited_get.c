
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ refcount; } ;
typedef TYPE_1__ item ;
typedef int conn ;


 scalar_t__ IT_REFCOUNT_LIMIT ;
 TYPE_1__* item_get (char*,size_t,int *,int) ;
 int item_remove (TYPE_1__*) ;
 TYPE_1__* item_touch (char*,size_t,int ,int *) ;

__attribute__((used)) static inline item* limited_get(char *key, size_t nkey, conn *c, uint32_t exptime, bool should_touch, bool do_update) {
    item *it;
    if (should_touch) {
        it = item_touch(key, nkey, exptime, c);
    } else {
        it = item_get(key, nkey, c, do_update);
    }
    if (it && it->refcount > IT_REFCOUNT_LIMIT) {
        item_remove(it);
        it = ((void*)0);
    }
    return it;
}
