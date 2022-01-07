
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {struct TYPE_3__* h_next; } ;
typedef TYPE_1__ item ;


 int MEMCACHED_ASSOC_DELETE (char const*,size_t const) ;
 TYPE_1__** _hashitem_before (char const*,size_t const,int const) ;
 int assert (int) ;

void assoc_delete(const char *key, const size_t nkey, const uint32_t hv) {
    item **before = _hashitem_before(key, nkey, hv);

    if (*before) {
        item *nxt;



        MEMCACHED_ASSOC_DELETE(key, nkey);
        nxt = (*before)->h_next;
        (*before)->h_next = 0;
        *before = nxt;
        return;
    }


    assert(*before != 0);
}
