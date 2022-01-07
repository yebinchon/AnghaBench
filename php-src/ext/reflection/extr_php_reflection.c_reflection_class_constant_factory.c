
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_7__ {int * name; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_8__ {int ce; } ;
typedef TYPE_2__ zend_class_constant ;
struct TYPE_9__ {scalar_t__ ignore_visibility; int ce; int ref_type; TYPE_2__* ptr; } ;
typedef TYPE_3__ reflection_object ;


 int REF_TYPE_CLASS_CONSTANT ;
 int ZVAL_STR_COPY (int ,int *) ;
 TYPE_3__* Z_REFLECTION_P (int *) ;
 int reflection_class_constant_ptr ;
 int reflection_instantiate (int ,int *) ;
 int reflection_prop_class (int *) ;
 int reflection_prop_name (int *) ;

__attribute__((used)) static void reflection_class_constant_factory(zend_class_entry *ce, zend_string *name_str, zend_class_constant *constant, zval *object)
{
 reflection_object *intern;

 reflection_instantiate(reflection_class_constant_ptr, object);
 intern = Z_REFLECTION_P(object);
 intern->ptr = constant;
 intern->ref_type = REF_TYPE_CLASS_CONSTANT;
 intern->ce = constant->ce;
 intern->ignore_visibility = 0;

 ZVAL_STR_COPY(reflection_prop_name(object), name_str);
 ZVAL_STR_COPY(reflection_prop_class(object), ce->name);
}
