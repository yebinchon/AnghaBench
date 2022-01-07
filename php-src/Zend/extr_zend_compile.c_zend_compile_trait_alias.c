
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * alias; int modifiers; int trait_method; } ;
typedef TYPE_1__ zend_trait_alias ;
struct TYPE_10__ {int attr; struct TYPE_10__** child; } ;
typedef TYPE_2__ zend_ast ;
typedef int uint32_t ;
struct TYPE_11__ {int trait_aliases; } ;


 TYPE_8__* CG (int ) ;
 int active_class_entry ;
 TYPE_1__* emalloc (int) ;
 int zend_add_to_list (int *,TYPE_1__*) ;
 int zend_ast_get_str (TYPE_2__*) ;
 int zend_check_const_and_trait_alias_attr (int ,char*) ;
 int zend_compile_method_ref (TYPE_2__*,int *) ;
 int * zend_string_copy (int ) ;

__attribute__((used)) static void zend_compile_trait_alias(zend_ast *ast)
{
 zend_ast *method_ref_ast = ast->child[0];
 zend_ast *alias_ast = ast->child[1];
 uint32_t modifiers = ast->attr;

 zend_trait_alias *alias;

 zend_check_const_and_trait_alias_attr(modifiers, "method");

 alias = emalloc(sizeof(zend_trait_alias));
 zend_compile_method_ref(method_ref_ast, &alias->trait_method);
 alias->modifiers = modifiers;

 if (alias_ast) {
  alias->alias = zend_string_copy(zend_ast_get_str(alias_ast));
 } else {
  alias->alias = ((void*)0);
 }

 zend_add_to_list(&CG(active_class_entry)->trait_aliases, alias);
}
