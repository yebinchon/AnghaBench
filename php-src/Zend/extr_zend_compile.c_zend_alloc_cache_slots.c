
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int cache_size; } ;
typedef TYPE_1__ zend_op_array ;
typedef unsigned int uint32_t ;


 TYPE_1__* CG (int ) ;
 int active_op_array ;

__attribute__((used)) static inline uint32_t zend_alloc_cache_slots(unsigned count) {
 if (count == 0) {
  return (uint32_t) -1;
 }

 zend_op_array *op_array = CG(active_op_array);
 uint32_t ret = op_array->cache_size;
 op_array->cache_size += count * sizeof(void*);
 return ret;
}
