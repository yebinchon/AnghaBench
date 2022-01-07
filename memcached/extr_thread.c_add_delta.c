
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
typedef enum delta_result_type { ____Placeholder_delta_result_type } delta_result_type ;
typedef int conn ;


 int do_add_delta (int *,char const*,size_t const,int,int const,char*,int *,int ) ;
 int hash (char const*,size_t const) ;
 int item_lock (int ) ;
 int item_unlock (int ) ;

enum delta_result_type add_delta(conn *c, const char *key,
                                 const size_t nkey, bool incr,
                                 const int64_t delta, char *buf,
                                 uint64_t *cas) {
    enum delta_result_type ret;
    uint32_t hv;

    hv = hash(key, nkey);
    item_lock(hv);
    ret = do_add_delta(c, key, nkey, incr, delta, buf, cas, hv);
    item_unlock(hv);
    return ret;
}
