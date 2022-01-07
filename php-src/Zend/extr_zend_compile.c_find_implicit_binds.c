
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {size_t children; TYPE_2__** child; } ;
typedef TYPE_1__ zend_ast_list ;
struct TYPE_12__ {int * child; } ;
typedef TYPE_2__ zend_ast ;
typedef size_t uint32_t ;
struct TYPE_13__ {int uses; } ;
typedef TYPE_3__ closure_info ;


 int find_implicit_binds_recursively (TYPE_3__*,TYPE_2__*) ;
 TYPE_1__* zend_ast_get_list (TYPE_2__*) ;
 int zend_ast_get_str (int ) ;
 int zend_hash_del (int *,int ) ;
 int zend_hash_init (int *,size_t,int *,int *,int ) ;

__attribute__((used)) static void find_implicit_binds(closure_info *info, zend_ast *params_ast, zend_ast *stmt_ast)
{
 zend_ast_list *param_list = zend_ast_get_list(params_ast);
 uint32_t i;

 zend_hash_init(&info->uses, param_list->children, ((void*)0), ((void*)0), 0);

 find_implicit_binds_recursively(info, stmt_ast);


 for (i = 0; i < param_list->children; i++) {
  zend_ast *param_ast = param_list->child[i];
  zend_hash_del(&info->uses, zend_ast_get_str(param_ast->child[1]));
 }
}
