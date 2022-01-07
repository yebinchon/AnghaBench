
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * dtor; } ;
typedef TYPE_1__ zend_llist ;
typedef int llist_apply_func_t ;


 int extension_name_cmp ;
 scalar_t__ print_extension_info ;
 int zend_extensions ;
 int zend_llist_apply (TYPE_1__*,int ) ;
 int zend_llist_copy (TYPE_1__*,int *) ;
 int zend_llist_destroy (TYPE_1__*) ;
 int zend_llist_sort (TYPE_1__*,int ) ;

__attribute__((used)) static void print_extensions(void)
{
 zend_llist sorted_exts;

 zend_llist_copy(&sorted_exts, &zend_extensions);
 sorted_exts.dtor = ((void*)0);
 zend_llist_sort(&sorted_exts, extension_name_cmp);
 zend_llist_apply(&sorted_exts, (llist_apply_func_t) print_extension_info);
 zend_llist_destroy(&sorted_exts);
}
