
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cache_size; } ;
typedef TYPE_1__ zend_op_array ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t alloc_cache_slots(zend_op_array *op_array, uint32_t num) {
 uint32_t ret = op_array->cache_size;
 op_array->cache_size += num * sizeof(void *);
 return ret;
}
