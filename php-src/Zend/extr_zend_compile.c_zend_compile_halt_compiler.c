
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_long ;
struct TYPE_4__ {struct TYPE_4__** child; } ;
typedef TYPE_1__ zend_ast ;
typedef int const_name ;


 int CONST_CS ;
 int E_COMPILE_ERROR ;
 scalar_t__ FC (int ) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int Z_LVAL_P (int ) ;
 int has_bracketed_namespaces ;
 int in_namespace ;
 int zend_ast_get_zval (TYPE_1__*) ;
 int zend_error_noreturn (int ,char*) ;
 int * zend_get_compiled_filename () ;
 int * zend_mangle_property_name (char const*,int,int ,int ,int ) ;
 int zend_register_long_constant (int ,int ,int ,int ,int ) ;
 int zend_string_release_ex (int *,int ) ;

void zend_compile_halt_compiler(zend_ast *ast)
{
 zend_ast *offset_ast = ast->child[0];
 zend_long offset = Z_LVAL_P(zend_ast_get_zval(offset_ast));

 zend_string *filename, *name;
 const char const_name[] = "__COMPILER_HALT_OFFSET__";

 if (FC(has_bracketed_namespaces) && FC(in_namespace)) {
  zend_error_noreturn(E_COMPILE_ERROR,
   "__HALT_COMPILER() can only be used from the outermost scope");
 }

 filename = zend_get_compiled_filename();
 name = zend_mangle_property_name(const_name, sizeof(const_name) - 1,
  ZSTR_VAL(filename), ZSTR_LEN(filename), 0);

 zend_register_long_constant(ZSTR_VAL(name), ZSTR_LEN(name), offset, CONST_CS, 0);
 zend_string_release_ex(name, 0);
}
