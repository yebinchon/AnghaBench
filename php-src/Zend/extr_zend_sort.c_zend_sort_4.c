
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* swap_func_t ) (void*,void*) ;
typedef scalar_t__ (* compare_func_t ) (void*,void*) ;


 int zend_sort_3 (void*,void*,void*,scalar_t__ (*) (void*,void*),int (*) (void*,void*)) ;

__attribute__((used)) static void zend_sort_4(void *a, void *b, void *c, void *d, compare_func_t cmp, swap_func_t swp) {
 zend_sort_3(a, b, c, cmp, swp);
 if (cmp(c, d) > 0) {
  swp(c, d);
  if (cmp(b, c) > 0) {
   swp(b, c);
   if (cmp(a, b) > 0) {
    swp(a, b);
   }
  }
 }
}
