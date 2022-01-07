
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __test_metadata {struct __test_metadata* prev; struct __test_metadata* next; } ;


 scalar_t__ _CONSTRUCTOR_ORDER_FORWARD ;
 scalar_t__ __constructor_order ;
 int __test_count ;
 struct __test_metadata* __test_list ;

__attribute__((used)) static inline void __register_test(struct __test_metadata *t)
{
 __test_count++;

 if (__test_list == ((void*)0)) {
  __test_list = t;
  t->next = ((void*)0);
  t->prev = t;
  return;
 }
 if (__constructor_order == _CONSTRUCTOR_ORDER_FORWARD) {
  t->next = ((void*)0);
  t->prev = __test_list->prev;
  t->prev->next = t;
  __test_list->prev = t;
 } else {
  t->next = __test_list;
  t->next->prev = t;
  t->prev = t;
  __test_list = t;
 }
}
