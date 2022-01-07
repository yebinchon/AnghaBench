
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int zend_alloc_cache_slots (int) ;

__attribute__((used)) static inline uint32_t zend_alloc_cache_slot(void) {
 return zend_alloc_cache_slots(1);
}
