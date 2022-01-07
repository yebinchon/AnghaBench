
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attr; struct TYPE_5__** child; } ;
typedef TYPE_1__ zend_ast ;


 int zend_compile_prop_decl (TYPE_1__*,TYPE_1__*,int ) ;

void zend_compile_prop_group(zend_ast *list)
{
 zend_ast *type_ast = list->child[0];
 zend_ast *prop_ast = list->child[1];

 zend_compile_prop_decl(prop_ast, type_ast, list->attr);
}
