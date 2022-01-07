
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_8__ {size_t children; TYPE_2__** child; } ;
typedef TYPE_1__ zend_ast_list ;
struct TYPE_9__ {scalar_t__ attr; int * child; } ;
typedef TYPE_2__ zend_ast ;
typedef size_t uint32_t ;


 int ZEND_AST_USE ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_STR (int *,int *) ;
 int * Z_STR_P (int *) ;
 TYPE_2__* zend_ast_create_list (int,int ,TYPE_2__*) ;
 TYPE_1__* zend_ast_get_list (int ) ;
 int * zend_ast_get_str (int ) ;
 int * zend_ast_get_zval (int ) ;
 int zend_compile_use (TYPE_2__*) ;
 int * zend_concat_names (int ,int ,int ,int ) ;
 int zend_string_release_ex (int *,int ) ;

void zend_compile_group_use(zend_ast *ast)
{
 uint32_t i;
 zend_string *ns = zend_ast_get_str(ast->child[0]);
 zend_ast_list *list = zend_ast_get_list(ast->child[1]);

 for (i = 0; i < list->children; i++) {
  zend_ast *inline_use, *use = list->child[i];
  zval *name_zval = zend_ast_get_zval(use->child[0]);
  zend_string *name = Z_STR_P(name_zval);
  zend_string *compound_ns = zend_concat_names(ZSTR_VAL(ns), ZSTR_LEN(ns), ZSTR_VAL(name), ZSTR_LEN(name));
  zend_string_release_ex(name, 0);
  ZVAL_STR(name_zval, compound_ns);
  inline_use = zend_ast_create_list(1, ZEND_AST_USE, use);
  inline_use->attr = ast->attr ? ast->attr : use->attr;
  zend_compile_use(inline_use);
 }
}
