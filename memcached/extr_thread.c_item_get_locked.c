
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int item ;
typedef int conn ;


 int * do_item_get (char const*,size_t const,int ,int *,int const) ;
 int hash (char const*,size_t const) ;
 int item_lock (int ) ;

item *item_get_locked(const char *key, const size_t nkey, conn *c, const bool do_update, uint32_t *hv) {
    item *it;
    *hv = hash(key, nkey);
    item_lock(*hv);
    it = do_item_get(key, nkey, *hv, c, do_update);
    return it;
}
