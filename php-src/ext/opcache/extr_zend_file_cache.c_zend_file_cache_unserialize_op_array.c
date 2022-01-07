
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;


struct TYPE_20__ {TYPE_1__* jmp_addr; TYPE_1__* zv; } ;
struct TYPE_21__ {scalar_t__ op1_type; scalar_t__ op2_type; int opcode; int extended_value; int type; struct TYPE_21__* name; TYPE_14__ op2; TYPE_14__ op1; } ;
typedef TYPE_1__ zval ;
typedef TYPE_1__ zend_string ;
typedef int zend_persistent_script ;
struct TYPE_22__ {int last_literal; int last; int num_args; int fn_flags; int last_var; int run_time_cache; TYPE_1__* static_variables; int static_variables_ptr; TYPE_1__* prototype; TYPE_1__* try_catch_array; TYPE_1__* doc_comment; TYPE_1__* scope; TYPE_1__* live_range; TYPE_1__* filename; TYPE_1__* function_name; TYPE_1__** vars; TYPE_1__* arg_info; TYPE_1__* opcodes; TYPE_1__* literals; int * refcount; } ;
typedef TYPE_3__ zend_op_array ;
typedef TYPE_1__ zend_op ;
typedef TYPE_1__ zend_arg_info ;
typedef TYPE_1__ HashTable ;


 scalar_t__ IS_CONST ;
 int IS_UNSERIALIZED (TYPE_1__*) ;
 int UNSERIALIZE_PTR (TYPE_1__*) ;
 int UNSERIALIZE_STR (TYPE_1__*) ;
 int ZEND_ACC_HAS_RETURN_TYPE ;
 int ZEND_ACC_IMMUTABLE ;
 int ZEND_ACC_VARIADIC ;
 int ZEND_LAST_CATCH ;
 TYPE_1__* ZEND_MAP_PTR (int ) ;
 int ZEND_MAP_PTR_INIT (int ,TYPE_1__**) ;
 int ZEND_MAP_PTR_NEW (int ) ;
 int ZEND_PASS_TWO_UPDATE_CONSTANT (TYPE_3__*,TYPE_1__*,TYPE_14__) ;


 int ZVAL_PTR_DTOR ;
 int zend_deserialize_opcode_handler (TYPE_1__*) ;
 int zend_file_cache_unserialize_hash (TYPE_1__*,int *,void*,int (*) (TYPE_1__*,int *,void*),int ) ;
 int zend_file_cache_unserialize_type (int *,int *,void*) ;
 int zend_file_cache_unserialize_zval (TYPE_1__*,int *,void*) ;

__attribute__((used)) static void zend_file_cache_unserialize_op_array(zend_op_array *op_array,
                                                 zend_persistent_script *script,
                                                 void *buf)
{
 if (op_array->static_variables && !IS_UNSERIALIZED(op_array->static_variables)) {
  HashTable *ht;

  UNSERIALIZE_PTR(op_array->static_variables);
  ht = op_array->static_variables;
  zend_file_cache_unserialize_hash(ht,
    script, buf, zend_file_cache_unserialize_zval, ZVAL_PTR_DTOR);
 }

 if (op_array->refcount) {
  op_array->refcount = ((void*)0);
  UNSERIALIZE_PTR(op_array->literals);
  UNSERIALIZE_PTR(op_array->opcodes);
  UNSERIALIZE_PTR(op_array->arg_info);
  UNSERIALIZE_PTR(op_array->vars);
  UNSERIALIZE_STR(op_array->function_name);
  UNSERIALIZE_STR(op_array->filename);
  UNSERIALIZE_PTR(op_array->live_range);
  UNSERIALIZE_PTR(op_array->scope);
  UNSERIALIZE_STR(op_array->doc_comment);
  UNSERIALIZE_PTR(op_array->try_catch_array);
  UNSERIALIZE_PTR(op_array->prototype);
  return;
 }

 if (op_array->literals && !IS_UNSERIALIZED(op_array->literals)) {
  zval *p, *end;

  UNSERIALIZE_PTR(op_array->literals);
  p = op_array->literals;
  end = p + op_array->last_literal;
  while (p < end) {
   zend_file_cache_unserialize_zval(p, script, buf);
   p++;
  }
 }

 if (!IS_UNSERIALIZED(op_array->opcodes)) {
  zend_op *opline, *end;

  UNSERIALIZE_PTR(op_array->opcodes);
  opline = op_array->opcodes;
  end = opline + op_array->last;
  while (opline < end) {
   if (opline->op1_type == IS_CONST) {
    ZEND_PASS_TWO_UPDATE_CONSTANT(op_array, opline, opline->op1);
   }
   if (opline->op2_type == IS_CONST) {
    ZEND_PASS_TWO_UPDATE_CONSTANT(op_array, opline, opline->op2);
   }
   zend_deserialize_opcode_handler(opline);
   opline++;
  }

  if (op_array->arg_info) {
   zend_arg_info *p, *end;
   UNSERIALIZE_PTR(op_array->arg_info);
   p = op_array->arg_info;
   end = p + op_array->num_args;
   if (op_array->fn_flags & ZEND_ACC_HAS_RETURN_TYPE) {
    p--;
   }
   if (op_array->fn_flags & ZEND_ACC_VARIADIC) {
    end++;
   }
   while (p < end) {
    if (!IS_UNSERIALIZED(p->name)) {
     UNSERIALIZE_STR(p->name);
    }
    zend_file_cache_unserialize_type(&p->type, script, buf);
    p++;
   }
  }

  if (op_array->vars) {
   zend_string **p, **end;

   UNSERIALIZE_PTR(op_array->vars);
   p = op_array->vars;
   end = p + op_array->last_var;
   while (p < end) {
    if (!IS_UNSERIALIZED(*p)) {
     UNSERIALIZE_STR(*p);
    }
    p++;
   }
  }

  UNSERIALIZE_STR(op_array->function_name);
  UNSERIALIZE_STR(op_array->filename);
  UNSERIALIZE_PTR(op_array->live_range);
  UNSERIALIZE_PTR(op_array->scope);
  UNSERIALIZE_STR(op_array->doc_comment);
  UNSERIALIZE_PTR(op_array->try_catch_array);
  UNSERIALIZE_PTR(op_array->prototype);

  if (op_array->fn_flags & ZEND_ACC_IMMUTABLE) {
   if (op_array->static_variables) {
    ZEND_MAP_PTR_NEW(op_array->static_variables_ptr);
   } else {
    ZEND_MAP_PTR_INIT(op_array->static_variables_ptr, &op_array->static_variables);
   }
   ZEND_MAP_PTR_NEW(op_array->run_time_cache);
  } else {
   ZEND_MAP_PTR_INIT(op_array->static_variables_ptr, &op_array->static_variables);
   UNSERIALIZE_PTR(ZEND_MAP_PTR(op_array->run_time_cache));
  }
 }
}
