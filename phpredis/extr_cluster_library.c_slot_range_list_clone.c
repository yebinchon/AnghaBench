
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_llist ;
typedef int redisSlotRange ;


 int memcpy (int *,int *,int) ;
 int * pemalloc (size_t,int) ;
 size_t zend_llist_count (int *) ;
 int * zend_llist_get_first (int *) ;
 int * zend_llist_get_next (int *) ;

__attribute__((used)) static redisSlotRange *slot_range_list_clone(zend_llist *src, size_t *count) {
    redisSlotRange *dst, *range;
    size_t i = 0;

    *count = zend_llist_count(src);
    dst = pemalloc(*count * sizeof(*dst), 1);

    range = zend_llist_get_first(src);
    while (range) {
        memcpy(&dst[i++], range, sizeof(*range));
        range = zend_llist_get_next(src);
     }

    return dst;
}
