
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_ulong ;
typedef int zend_op_array ;
struct TYPE_5__ {int flags; TYPE_2__* caller_info; } ;
typedef TYPE_1__ zend_func_info ;
struct TYPE_6__ {int recursive; struct TYPE_6__* next_caller; int * caller_op_array; } ;
typedef TYPE_2__ zend_call_info ;
struct TYPE_7__ {int op_arrays_count; TYPE_1__* func_infos; int ** op_arrays; } ;
typedef TYPE_3__ zend_call_graph ;
typedef int zend_bitset ;


 int ALLOCA_FLAG (int ) ;
 int ZEND_BITSET_ALLOCA (int,int ) ;
 int ZEND_FUNC_RECURSIVE ;
 int ZEND_FUNC_RECURSIVE_DIRECTLY ;
 int ZEND_FUNC_RECURSIVE_INDIRECTLY ;
 int free_alloca (int ,int ) ;
 int memset (int ,int ,int) ;
 int use_heap ;
 int zend_bitset_len (int) ;
 scalar_t__ zend_is_indirectly_recursive (int *,int *,int ) ;

__attribute__((used)) static void zend_analyze_recursion(zend_call_graph *call_graph)
{
 zend_op_array *op_array;
 zend_func_info *func_info;
 zend_call_info *call_info;
 int i;
 int set_len = zend_bitset_len(call_graph->op_arrays_count);
 zend_bitset visited;
 ALLOCA_FLAG(use_heap);

 visited = ZEND_BITSET_ALLOCA(set_len, use_heap);
 for (i = 0; i < call_graph->op_arrays_count; i++) {
  op_array = call_graph->op_arrays[i];
  func_info = call_graph->func_infos + i;
  call_info = func_info->caller_info;
  while (call_info) {
   if (call_info->caller_op_array == op_array) {
    call_info->recursive = 1;
    func_info->flags |= ZEND_FUNC_RECURSIVE | ZEND_FUNC_RECURSIVE_DIRECTLY;
   } else {
    memset(visited, 0, sizeof(zend_ulong) * set_len);
    if (zend_is_indirectly_recursive(op_array, call_info->caller_op_array, visited)) {
     call_info->recursive = 1;
     func_info->flags |= ZEND_FUNC_RECURSIVE | ZEND_FUNC_RECURSIVE_INDIRECTLY;
    }
   }
   call_info = call_info->next_caller;
  }
 }

 free_alloca(visited, use_heap);
}
