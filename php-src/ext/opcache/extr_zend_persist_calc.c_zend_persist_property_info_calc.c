
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_7__ {scalar_t__ doc_comment; int type; int name; } ;
typedef TYPE_1__ zend_property_info ;
struct TYPE_8__ {scalar_t__ save_comments; } ;


 int ADD_INTERNED_STRING (int ) ;
 int ADD_SIZE_EX (int) ;
 int ADD_STRING (scalar_t__) ;
 TYPE_6__ ZCG (int ) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int accel_directives ;
 int zend_persist_type_calc (int *) ;
 int zend_shared_alloc_get_xlat_entry (TYPE_1__*) ;
 int zend_shared_alloc_register_xlat_entry (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void zend_persist_property_info_calc(zval *zv)
{
 zend_property_info *prop = Z_PTR_P(zv);

 if (!zend_shared_alloc_get_xlat_entry(prop)) {
  zend_shared_alloc_register_xlat_entry(prop, prop);
  ADD_SIZE_EX(sizeof(zend_property_info));
  ADD_INTERNED_STRING(prop->name);
  zend_persist_type_calc(&prop->type);
  if (ZCG(accel_directives).save_comments && prop->doc_comment) {
   ADD_STRING(prop->doc_comment);
  }
 }
}
