
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ spl_ptr_llist_element ;


 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_ptr_llist_zval_dtor(spl_ptr_llist_element *elem) {
 if (!Z_ISUNDEF(elem->data)) {
  zval_ptr_dtor(&elem->data);
  ZVAL_UNDEF(&elem->data);
 }
}
