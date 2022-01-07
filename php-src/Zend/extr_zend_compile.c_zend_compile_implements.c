
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_8__ {int name; int lc_name; } ;
typedef TYPE_1__ zend_class_name ;
struct TYPE_9__ {size_t num_interfaces; TYPE_1__* interface_names; int ce_flags; } ;
typedef TYPE_2__ zend_class_entry ;
struct TYPE_10__ {int children; int ** child; } ;
typedef TYPE_3__ zend_ast_list ;
typedef int zend_ast ;
typedef size_t uint32_t ;


 TYPE_2__* CG (int ) ;
 int E_COMPILE_ERROR ;
 int ZEND_ACC_IMPLEMENT_INTERFACES ;
 int ZSTR_VAL (int *) ;
 int active_class_entry ;
 int efree (TYPE_1__*) ;
 TYPE_1__* emalloc (int) ;
 TYPE_3__* zend_ast_get_list (int *) ;
 int * zend_ast_get_str (int *) ;
 int zend_error_noreturn (int ,char*,int ) ;
 int zend_is_const_default_class_ref (int *) ;
 int zend_resolve_class_name_ast (int *) ;
 int zend_string_tolower (int ) ;

void zend_compile_implements(zend_ast *ast)
{
 zend_ast_list *list = zend_ast_get_list(ast);
 zend_class_entry *ce = CG(active_class_entry);
 zend_class_name *interface_names;
 uint32_t i;

 interface_names = emalloc(sizeof(zend_class_name) * list->children);

 for (i = 0; i < list->children; ++i) {
  zend_ast *class_ast = list->child[i];
  zend_string *name = zend_ast_get_str(class_ast);

  if (!zend_is_const_default_class_ref(class_ast)) {
   efree(interface_names);
   zend_error_noreturn(E_COMPILE_ERROR,
    "Cannot use '%s' as interface name as it is reserved", ZSTR_VAL(name));
  }

  interface_names[i].name = zend_resolve_class_name_ast(class_ast);
  interface_names[i].lc_name = zend_string_tolower(interface_names[i].name);
 }

 ce->ce_flags |= ZEND_ACC_IMPLEMENT_INTERFACES;
 ce->num_interfaces = list->children;
 ce->interface_names = interface_names;
}
