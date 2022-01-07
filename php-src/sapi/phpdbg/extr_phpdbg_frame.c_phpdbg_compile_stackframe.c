
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_19__ {scalar_t__ num_args; int filename; scalar_t__ T; scalar_t__ last_var; int function_name; TYPE_1__* scope; } ;
typedef TYPE_3__ zend_op_array ;
struct TYPE_20__ {TYPE_2__* opline; TYPE_12__* func; } ;
typedef TYPE_4__ zend_execute_data ;
typedef scalar_t__ uint32_t ;
struct TYPE_21__ {int * s; int member_0; } ;
typedef TYPE_5__ smart_str ;
struct TYPE_18__ {int lineno; } ;
struct TYPE_17__ {int name; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_3__ op_array; } ;


 int * ZEND_CALL_ARG (TYPE_4__*,int) ;
 scalar_t__ ZEND_CALL_NUM_ARGS (TYPE_4__*) ;
 int * ZEND_CALL_VAR_NUM (TYPE_4__*,scalar_t__) ;
 scalar_t__ ZEND_USER_FUNCTION ;
 int phpdbg_append_individual_arg (TYPE_5__*,scalar_t__,TYPE_12__*,int *) ;
 int smart_str_append (TYPE_5__*,int ) ;
 int smart_str_append_unsigned (TYPE_5__*,int ) ;
 int smart_str_appendc (TYPE_5__*,char) ;
 int smart_str_appends (TYPE_5__*,char*) ;

zend_string *phpdbg_compile_stackframe(zend_execute_data *ex) {
 smart_str s = {0};
 zend_op_array *op_array = &ex->func->op_array;
 uint32_t i = 0, first_extra_arg = op_array->num_args, num_args = ZEND_CALL_NUM_ARGS(ex);
 zval *p = ZEND_CALL_ARG(ex, 1);

 if (op_array->scope) {
  smart_str_append(&s, op_array->scope->name);
  smart_str_appends(&s, "::");
 }
 smart_str_append(&s, op_array->function_name);
 smart_str_appendc(&s, '(');
 if (ZEND_CALL_NUM_ARGS(ex) > first_extra_arg) {
  while (i < first_extra_arg) {
   phpdbg_append_individual_arg(&s, i, ex->func, p);
   p++;
   i++;
  }
  p = ZEND_CALL_VAR_NUM(ex, op_array->last_var + op_array->T);
 }
 while (i < num_args) {
  phpdbg_append_individual_arg(&s, i, ex->func, p);
  p++;
  i++;
 }
 smart_str_appendc(&s, ')');

 if (ex->func->type == ZEND_USER_FUNCTION) {
  smart_str_appends(&s, " at ");
  smart_str_append(&s, op_array->filename);
  smart_str_appendc(&s, ':');
  smart_str_append_unsigned(&s, ex->opline->lineno);
 } else {
  smart_str_appends(&s, " [internal function]");
 }

 return s.s;
}
