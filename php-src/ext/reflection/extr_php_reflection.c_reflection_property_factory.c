
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_10__ {TYPE_1__* ce; } ;
typedef TYPE_2__ zend_property_info ;
struct TYPE_11__ {int * name; } ;
typedef TYPE_3__ zend_class_entry ;
struct TYPE_12__ {scalar_t__ ignore_visibility; TYPE_3__* ce; int ref_type; TYPE_5__* ptr; } ;
typedef TYPE_4__ reflection_object ;
struct TYPE_13__ {int unmangled_name; TYPE_2__* prop; } ;
typedef TYPE_5__ property_reference ;
struct TYPE_9__ {int * name; } ;


 int REF_TYPE_PROPERTY ;
 int ZVAL_STR_COPY (int ,int *) ;
 TYPE_4__* Z_REFLECTION_P (int *) ;
 scalar_t__ emalloc (int) ;
 int reflection_instantiate (int ,int *) ;
 int reflection_prop_class (int *) ;
 int reflection_prop_name (int *) ;
 int reflection_property_ptr ;
 int zend_string_copy (int *) ;

__attribute__((used)) static void reflection_property_factory(zend_class_entry *ce, zend_string *name, zend_property_info *prop, zval *object)
{
 reflection_object *intern;
 property_reference *reference;

 reflection_instantiate(reflection_property_ptr, object);
 intern = Z_REFLECTION_P(object);
 reference = (property_reference*) emalloc(sizeof(property_reference));
 reference->prop = prop;
 reference->unmangled_name = zend_string_copy(name);
 intern->ptr = reference;
 intern->ref_type = REF_TYPE_PROPERTY;
 intern->ce = ce;
 intern->ignore_visibility = 0;
 ZVAL_STR_COPY(reflection_prop_name(object), name);
 ZVAL_STR_COPY(reflection_prop_class(object), prop ? prop->ce->name : ce->name);
}
