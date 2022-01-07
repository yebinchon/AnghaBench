
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_op_array ;
struct TYPE_4__ {TYPE_2__* caller_info; int num; } ;
typedef TYPE_1__ zend_func_info ;
struct TYPE_5__ {int recursive; struct TYPE_5__* next_caller; int * caller_op_array; } ;
typedef TYPE_2__ zend_call_info ;
typedef int zend_bitset ;


 TYPE_1__* ZEND_FUNC_INFO (int *) ;
 scalar_t__ zend_bitset_in (int ,int ) ;
 int zend_bitset_incl (int ,int ) ;

__attribute__((used)) static int zend_is_indirectly_recursive(zend_op_array *root, zend_op_array *op_array, zend_bitset visited)
{
 zend_func_info *func_info;
 zend_call_info *call_info;
 int ret = 0;

 if (op_array == root) {
  return 1;
 }

 func_info = ZEND_FUNC_INFO(op_array);
 if (zend_bitset_in(visited, func_info->num)) {
  return 0;
 }
 zend_bitset_incl(visited, func_info->num);
 call_info = func_info->caller_info;
 while (call_info) {
  if (zend_is_indirectly_recursive(root, call_info->caller_op_array, visited)) {
   call_info->recursive = 1;
   ret = 1;
  }
  call_info = call_info->next_caller;
 }
 return ret;
}
