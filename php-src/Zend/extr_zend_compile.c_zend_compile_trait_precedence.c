
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {int num_excludes; int * exclude_class_names; int trait_method; } ;
typedef TYPE_1__ zend_trait_precedence ;
typedef int zend_string ;
struct TYPE_14__ {int children; TYPE_3__** child; } ;
typedef TYPE_2__ zend_ast_list ;
struct TYPE_15__ {struct TYPE_15__** child; } ;
typedef TYPE_3__ zend_ast ;
typedef size_t uint32_t ;
struct TYPE_12__ {int trait_precedences; } ;


 TYPE_11__* CG (int ) ;
 int active_class_entry ;
 TYPE_1__* emalloc (int) ;
 int zend_add_to_list (int *,TYPE_1__*) ;
 TYPE_2__* zend_ast_get_list (TYPE_3__*) ;
 int zend_compile_method_ref (TYPE_3__*,int *) ;
 int zend_resolve_class_name_ast (TYPE_3__*) ;

__attribute__((used)) static void zend_compile_trait_precedence(zend_ast *ast)
{
 zend_ast *method_ref_ast = ast->child[0];
 zend_ast *insteadof_ast = ast->child[1];
 zend_ast_list *insteadof_list = zend_ast_get_list(insteadof_ast);
 uint32_t i;

 zend_trait_precedence *precedence = emalloc(sizeof(zend_trait_precedence) + (insteadof_list->children - 1) * sizeof(zend_string*));
 zend_compile_method_ref(method_ref_ast, &precedence->trait_method);
 precedence->num_excludes = insteadof_list->children;

 for (i = 0; i < insteadof_list->children; ++i) {
  zend_ast *name_ast = insteadof_list->child[i];
  precedence->exclude_class_names[i] = zend_resolve_class_name_ast(name_ast);
 }

 zend_add_to_list(&CG(active_class_entry)->trait_precedences, precedence);
}
