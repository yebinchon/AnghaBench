
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int znode ;
typedef int zend_string ;
struct TYPE_11__ {int fn_flags; int * function_name; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_12__ {int op1; void* op1_type; int opcode; int extended_value; } ;
typedef TYPE_2__ zend_op ;
typedef scalar_t__ zend_bool ;
struct TYPE_13__ {int lex_pos; int * name; } ;
typedef TYPE_3__ zend_ast_decl ;


 int CG (int ) ;
 int E_COMPILE_ERROR ;
 scalar_t__ FC (int ) ;
 void* IS_CONST ;
 int LITERAL_STR (int ,int *) ;
 scalar_t__ UNEXPECTED (int ) ;
 int ZEND_ACC_CLOSURE ;
 int ZEND_DECLARE_FUNCTION ;
 int ZEND_DECLARE_LAMBDA_FUNCTION ;
 int ZEND_SYMBOL_FUNCTION ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int do_bind_function_error (int *,TYPE_1__*,int) ;
 int function_table ;
 TYPE_2__* get_next_op () ;
 int imports_function ;
 int zend_add_literal_string (int **) ;
 int zend_alloc_cache_slot () ;
 int * zend_build_runtime_definition_key (int *,int ) ;
 TYPE_2__* zend_emit_op_tmp (int *,int ,int *,int *) ;
 int zend_error (int ,char*) ;
 int zend_error_noreturn (int ,char*,...) ;
 int * zend_hash_add_ptr (int ,int *,TYPE_1__*) ;
 int * zend_hash_find_ptr_lc (scalar_t__,int ,int ) ;
 int zend_hash_update_ptr (int ,int *,TYPE_1__*) ;
 int * zend_prefix_with_ns (int *) ;
 int zend_register_seen_symbol (int *,int ) ;
 int * zend_string_copy (int *) ;
 int zend_string_equals_ci (int *,int *) ;
 scalar_t__ zend_string_equals_literal (int *,char*) ;
 scalar_t__ zend_string_equals_literal_ci (int *,char*) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static void zend_begin_func_decl(znode *result, zend_op_array *op_array, zend_ast_decl *decl, zend_bool toplevel)
{
 zend_string *unqualified_name, *name, *lcname, *key;
 zend_op *opline;

 unqualified_name = decl->name;
 op_array->function_name = name = zend_prefix_with_ns(unqualified_name);
 lcname = zend_string_tolower(name);

 if (FC(imports_function)) {
  zend_string *import_name = zend_hash_find_ptr_lc(
   FC(imports_function), ZSTR_VAL(unqualified_name), ZSTR_LEN(unqualified_name));
  if (import_name && !zend_string_equals_ci(lcname, import_name)) {
   zend_error_noreturn(E_COMPILE_ERROR, "Cannot declare function %s "
    "because the name is already in use", ZSTR_VAL(name));
  }
 }

 if (zend_string_equals_literal(lcname, "__autoload")) {
  zend_error_noreturn(E_COMPILE_ERROR,
   "__autoload() is no longer supported, use spl_autoload_register() instead");
 }

 if (zend_string_equals_literal_ci(unqualified_name, "assert")) {
  zend_error(E_COMPILE_ERROR,
   "Defining a custom assert() function is not allowed, "
   "as the function has special semantics");
 }

 zend_register_seen_symbol(lcname, ZEND_SYMBOL_FUNCTION);
 if (toplevel) {
  if (UNEXPECTED(zend_hash_add_ptr(CG(function_table), lcname, op_array) == ((void*)0))) {
   do_bind_function_error(lcname, op_array, 1);
  }
  zend_string_release_ex(lcname, 0);
  return;
 }

 key = zend_build_runtime_definition_key(lcname, decl->lex_pos);
 zend_hash_update_ptr(CG(function_table), key, op_array);

 if (op_array->fn_flags & ZEND_ACC_CLOSURE) {
  opline = zend_emit_op_tmp(result, ZEND_DECLARE_LAMBDA_FUNCTION, ((void*)0), ((void*)0));
  opline->extended_value = zend_alloc_cache_slot();
  opline->op1_type = IS_CONST;
  LITERAL_STR(opline->op1, key);
 } else {
  opline = get_next_op();
  opline->opcode = ZEND_DECLARE_FUNCTION;
  opline->op1_type = IS_CONST;
  LITERAL_STR(opline->op1, zend_string_copy(lcname));

  zend_add_literal_string(&key);
 }
 zend_string_release_ex(lcname, 0);
}
