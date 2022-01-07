
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_uchar ;
typedef int zend_type ;
typedef int zend_string ;
struct TYPE_6__ {int attr; scalar_t__ kind; } ;
typedef TYPE_1__ zend_ast ;
typedef scalar_t__ uint32_t ;


 int E_COMPILE_ERROR ;
 int E_COMPILE_WARNING ;
 scalar_t__ FC (int ) ;
 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_AST_TYPE ;
 scalar_t__ ZEND_FETCH_CLASS_DEFAULT ;
 int ZEND_NAME_NOT_FQ ;
 int ZEND_TYPE_INIT_CLASS (int *,int ,int ) ;
 int ZEND_TYPE_INIT_CODE (int,int ,int ) ;
 int ZEND_TYPE_NULLABLE ;
 int ZSTR_VAL (int *) ;
 int current_namespace ;
 int zend_assert_valid_class_name (int *) ;
 int * zend_ast_get_str (TYPE_1__*) ;
 int zend_ensure_valid_class_fetch_type (scalar_t__) ;
 int zend_error (int ,char*,int ,char const*,char const*,...) ;
 int zend_error_noreturn (int ,char*,int ) ;
 scalar_t__ zend_get_class_fetch_type_ast (TYPE_1__*) ;
 scalar_t__ zend_is_confusable_type (int *,char const**) ;
 scalar_t__ zend_is_not_imported (int *) ;
 int zend_lookup_builtin_type_by_name (int *) ;
 int * zend_resolve_class_name_ast (TYPE_1__*) ;
 int zend_string_addref (int *) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static zend_type zend_compile_single_typename(zend_ast *ast)
{
 ZEND_ASSERT(!(ast->attr & ZEND_TYPE_NULLABLE));
 if (ast->kind == ZEND_AST_TYPE) {
  return (zend_type) ZEND_TYPE_INIT_CODE(ast->attr, 0, 0);
 } else {
  zend_string *class_name = zend_ast_get_str(ast);
  zend_uchar type = zend_lookup_builtin_type_by_name(class_name);

  if (type != 0) {
   if ((ast->attr & ZEND_NAME_NOT_FQ) != ZEND_NAME_NOT_FQ) {
    zend_error_noreturn(E_COMPILE_ERROR,
     "Type declaration '%s' must be unqualified",
     ZSTR_VAL(zend_string_tolower(class_name)));
   }
   return (zend_type) ZEND_TYPE_INIT_CODE(type, 0, 0);
  } else {
   const char *correct_name;
   zend_string *orig_name = zend_ast_get_str(ast);
   uint32_t fetch_type = zend_get_class_fetch_type_ast(ast);
   if (fetch_type == ZEND_FETCH_CLASS_DEFAULT) {
    class_name = zend_resolve_class_name_ast(ast);
    zend_assert_valid_class_name(class_name);
   } else {
    zend_ensure_valid_class_fetch_type(fetch_type);
    zend_string_addref(class_name);
   }

   if (ast->attr == ZEND_NAME_NOT_FQ
     && zend_is_confusable_type(orig_name, &correct_name)
     && zend_is_not_imported(orig_name)) {
    const char *extra =
     FC(current_namespace) ? " or import the class with \"use\"" : "";
    if (correct_name) {
     zend_error(E_COMPILE_WARNING,
      "\"%s\" will be interpreted as a class name. Did you mean \"%s\"? "
      "Write \"\\%s\"%s to suppress this warning",
      ZSTR_VAL(orig_name), correct_name, ZSTR_VAL(class_name), extra);
    } else {
     zend_error(E_COMPILE_WARNING,
      "\"%s\" is not a supported builtin type "
      "and will be interpreted as a class name. "
      "Write \"\\%s\"%s to suppress this warning",
      ZSTR_VAL(orig_name), ZSTR_VAL(class_name), extra);
    }
   }

   return (zend_type) ZEND_TYPE_INIT_CLASS(class_name, 0, 0);
  }
 }
}
