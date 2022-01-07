
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int exptime; } ;
typedef TYPE_1__ item ;
typedef int conn ;


 int DO_UPDATE ;
 TYPE_1__* do_item_get (char const*,size_t,int const,int *,int ) ;

item *do_item_touch(const char *key, size_t nkey, uint32_t exptime,
                    const uint32_t hv, conn *c) {
    item *it = do_item_get(key, nkey, hv, c, DO_UPDATE);
    if (it != ((void*)0)) {
        it->exptime = exptime;
    }
    return it;
}
