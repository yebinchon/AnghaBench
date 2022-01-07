
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * class_name; int method_name; } ;
typedef TYPE_1__ zend_trait_method_reference ;
struct TYPE_8__ {struct TYPE_8__** child; } ;
typedef TYPE_2__ zend_ast ;


 int zend_ast_get_str (TYPE_2__*) ;
 int * zend_resolve_class_name_ast (TYPE_2__*) ;
 int zend_string_copy (int ) ;

__attribute__((used)) static void zend_compile_method_ref(zend_ast *ast, zend_trait_method_reference *method_ref)
{
 zend_ast *class_ast = ast->child[0];
 zend_ast *method_ast = ast->child[1];

 method_ref->method_name = zend_string_copy(zend_ast_get_str(method_ast));

 if (class_ast) {
  method_ref->class_name = zend_resolve_class_name_ast(class_ast);
 } else {
  method_ref->class_name = ((void*)0);
 }
}
