
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {size_t num_traits; TYPE_1__* trait_names; } ;
typedef TYPE_2__ zend_class_entry ;
typedef size_t uint32_t ;
struct TYPE_7__ {int lc_name; int name; } ;


 int ZEND_ASSERT (TYPE_2__*) ;
 int ZEND_FETCH_CLASS_TRAIT ;
 int spl_add_class_name (int *,TYPE_2__*,int,int) ;
 TYPE_2__* zend_fetch_class_by_name (int ,int ,int ) ;

void spl_add_traits(zval *list, zend_class_entry * pce, int allow, int ce_flags)
{
 uint32_t num_traits;
 zend_class_entry *trait;

 for (num_traits = 0; num_traits < pce->num_traits; num_traits++) {
  trait = zend_fetch_class_by_name(pce->trait_names[num_traits].name,
   pce->trait_names[num_traits].lc_name, ZEND_FETCH_CLASS_TRAIT);
  ZEND_ASSERT(trait);
  spl_add_class_name(list, trait, allow, ce_flags);
 }
}
