
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ spl_ptr_llist_element ;


 int Z_ADDREF (int ) ;
 scalar_t__ Z_REFCOUNTED (int ) ;

__attribute__((used)) static void spl_ptr_llist_zval_ctor(spl_ptr_llist_element *elem) {
 if (Z_REFCOUNTED(elem->data)) {
  Z_ADDREF(elem->data);
 }
}
