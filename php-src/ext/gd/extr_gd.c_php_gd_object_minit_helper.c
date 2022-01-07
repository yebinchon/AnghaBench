
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object_handlers ;
typedef int zend_class_entry ;
struct TYPE_6__ {int offset; int get_constructor; int free_obj; int * clone_obj; } ;
struct TYPE_5__ {int unserialize; int serialize; int create_object; int ce_flags; } ;


 int INIT_CLASS_ENTRY (int ,char*,int ) ;
 int XtOffsetOf (int ,int ) ;
 int ZEND_ACC_FINAL ;
 TYPE_1__* gd_image_ce ;
 int gd_image_object_methods ;
 int memcpy (TYPE_2__*,int *,int) ;
 int php_gd_image_object ;
 int php_gd_image_object_create ;
 int php_gd_image_object_free ;
 int php_gd_image_object_get_constructor ;
 TYPE_2__ php_gd_image_object_handlers ;
 int std ;
 int std_object_handlers ;
 int zend_class_serialize_deny ;
 int zend_class_unserialize_deny ;
 TYPE_1__* zend_register_internal_class (int *) ;

__attribute__((used)) static void php_gd_object_minit_helper()
{
 zend_class_entry ce;
 INIT_CLASS_ENTRY(ce, "GdImage", gd_image_object_methods);
 gd_image_ce = zend_register_internal_class(&ce);
 gd_image_ce->ce_flags |= ZEND_ACC_FINAL;
 gd_image_ce->create_object = php_gd_image_object_create;
 gd_image_ce->serialize = zend_class_serialize_deny;
 gd_image_ce->unserialize = zend_class_unserialize_deny;


 memcpy(&php_gd_image_object_handlers, &std_object_handlers, sizeof(zend_object_handlers));
 php_gd_image_object_handlers.clone_obj = ((void*)0);
 php_gd_image_object_handlers.free_obj = php_gd_image_object_free;
 php_gd_image_object_handlers.get_constructor = php_gd_image_object_get_constructor;
 php_gd_image_object_handlers.offset = XtOffsetOf(php_gd_image_object, std);
}
