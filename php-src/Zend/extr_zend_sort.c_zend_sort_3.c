
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* swap_func_t ) (void*,void*) ;
typedef scalar_t__ (* compare_func_t ) (void*,void*) ;



__attribute__((used)) static inline void zend_sort_3(void *a, void *b, void *c, compare_func_t cmp, swap_func_t swp) {
 if (!(cmp(a, b) > 0)) {
  if (!(cmp(b, c) > 0)) {
   return;
  }
  swp(b, c);
  if (cmp(a, b) > 0) {
   swp(a, b);
  }
  return;
 }
 if (!(cmp(c, b) > 0)) {
  swp(a, c);
  return;
 }
 swp(a, b);
 if (cmp(b, c) > 0) {
  swp(b, c);
 }
}
