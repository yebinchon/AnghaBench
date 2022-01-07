
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t try_op; scalar_t__ finally_end; scalar_t__ finally_op; scalar_t__ catch_op; } ;
typedef TYPE_1__ zend_try_catch_element ;
struct TYPE_7__ {TYPE_1__* try_catch_array; int last_try_catch; } ;
typedef TYPE_2__ zend_op_array ;
typedef size_t uint32_t ;


 TYPE_2__* CG (int ) ;
 int active_op_array ;
 TYPE_1__* safe_erealloc (TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static uint32_t zend_add_try_element(uint32_t try_op)
{
 zend_op_array *op_array = CG(active_op_array);
 uint32_t try_catch_offset = op_array->last_try_catch++;
 zend_try_catch_element *elem;

 op_array->try_catch_array = safe_erealloc(
  op_array->try_catch_array, sizeof(zend_try_catch_element), op_array->last_try_catch, 0);

 elem = &op_array->try_catch_array[try_catch_offset];
 elem->try_op = try_op;
 elem->catch_op = 0;
 elem->finally_op = 0;
 elem->finally_end = 0;

 return try_catch_offset;
}
