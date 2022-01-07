
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ce_flags; struct TYPE_3__* parent; } ;
typedef TYPE_1__ zend_class_entry ;
typedef scalar_t__ uint32_t ;


 int ZEND_ACC_LINKED ;

__attribute__((used)) static uint32_t get_class_entry_rank(zend_class_entry *ce) {
 uint32_t rank = 0;
 if (ce->ce_flags & ZEND_ACC_LINKED) {
  while (ce->parent) {
   rank++;
   ce = ce->parent;
  }
 }
 return rank;
}
