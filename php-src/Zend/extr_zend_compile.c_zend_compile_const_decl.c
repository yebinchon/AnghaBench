
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zval ;
struct TYPE_12__ {int constant; } ;
struct TYPE_13__ {TYPE_1__ u; void* op_type; } ;
typedef TYPE_2__ znode ;
typedef int zend_string ;
struct TYPE_14__ {size_t children; TYPE_4__** child; } ;
typedef TYPE_3__ zend_ast_list ;
struct TYPE_15__ {struct TYPE_15__** child; } ;
typedef TYPE_4__ zend_ast ;
typedef size_t uint32_t ;


 int E_COMPILE_ERROR ;
 scalar_t__ FC (int ) ;
 void* IS_CONST ;
 int ZEND_DECLARE_CONST ;
 int ZEND_SYMBOL_CONST ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_STR (int *,int *) ;
 int imports_const ;
 TYPE_3__* zend_ast_get_list (TYPE_4__*) ;
 int * zend_ast_get_str (TYPE_4__*) ;
 int zend_const_expr_to_zval (int *,TYPE_4__*) ;
 int zend_emit_op (int *,int ,TYPE_2__*,TYPE_2__*) ;
 int zend_error_noreturn (int ,char*,int ) ;
 scalar_t__ zend_get_special_const (int ,int ) ;
 int * zend_hash_find_ptr (scalar_t__,int *) ;
 int * zend_new_interned_string (int *) ;
 int * zend_prefix_with_ns (int *) ;
 int zend_register_seen_symbol (int *,int ) ;
 int zend_string_equals (int *,int *) ;

void zend_compile_const_decl(zend_ast *ast)
{
 zend_ast_list *list = zend_ast_get_list(ast);
 uint32_t i;
 for (i = 0; i < list->children; ++i) {
  zend_ast *const_ast = list->child[i];
  zend_ast *name_ast = const_ast->child[0];
  zend_ast *value_ast = const_ast->child[1];
  zend_string *unqualified_name = zend_ast_get_str(name_ast);

  zend_string *name;
  znode name_node, value_node;
  zval *value_zv = &value_node.u.constant;

  value_node.op_type = IS_CONST;
  zend_const_expr_to_zval(value_zv, value_ast);

  if (zend_get_special_const(ZSTR_VAL(unqualified_name), ZSTR_LEN(unqualified_name))) {
   zend_error_noreturn(E_COMPILE_ERROR,
    "Cannot redeclare constant '%s'", ZSTR_VAL(unqualified_name));
  }

  name = zend_prefix_with_ns(unqualified_name);
  name = zend_new_interned_string(name);

  if (FC(imports_const)) {
   zend_string *import_name = zend_hash_find_ptr(FC(imports_const), unqualified_name);
   if (import_name && !zend_string_equals(import_name, name)) {
    zend_error_noreturn(E_COMPILE_ERROR, "Cannot declare const %s because "
     "the name is already in use", ZSTR_VAL(name));
   }
  }

  name_node.op_type = IS_CONST;
  ZVAL_STR(&name_node.u.constant, name);

  zend_emit_op(((void*)0), ZEND_DECLARE_CONST, &name_node, &value_node);

  zend_register_seen_symbol(name, ZEND_SYMBOL_CONST);
 }
}
