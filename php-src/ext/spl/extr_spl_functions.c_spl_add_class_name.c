
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int ce_flags; int name; } ;
typedef TYPE_1__ zend_class_entry ;


 int ZVAL_STR_COPY (int *,int ) ;
 int Z_ARRVAL_P (int *) ;
 int zend_hash_add (int ,int ,int *) ;
 int * zend_hash_find (int ,int ) ;

void spl_add_class_name(zval *list, zend_class_entry *pce, int allow, int ce_flags)
{
 if (!allow || (allow > 0 && pce->ce_flags & ce_flags) || (allow < 0 && !(pce->ce_flags & ce_flags))) {
  zval *tmp;

  if ((tmp = zend_hash_find(Z_ARRVAL_P(list), pce->name)) == ((void*)0)) {
   zval t;
   ZVAL_STR_COPY(&t, pce->name);
   zend_hash_add(Z_ARRVAL_P(list), pce->name, &t);
  }
 }
}
