
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object_handlers ;
typedef int zend_class_entry ;
struct TYPE_6__ {int get_gc; int get_closure; int get_debug_info; int clone_obj; int compare; int unset_property; int has_property; int get_property_ptr_ptr; int read_property; int write_property; int get_method; int get_constructor; int free_obj; } ;
struct TYPE_5__ {int unserialize; int serialize; int create_object; int ce_flags; } ;


 int INIT_CLASS_ENTRY (int ,char*,int ) ;
 int ZEND_ACC_FINAL ;
 int closure_functions ;
 TYPE_3__ closure_handlers ;
 int memcpy (TYPE_3__*,int *,int) ;
 int std_object_handlers ;
 TYPE_1__* zend_ce_closure ;
 int zend_class_serialize_deny ;
 int zend_class_unserialize_deny ;
 int zend_closure_clone ;
 int zend_closure_compare ;
 int zend_closure_free_storage ;
 int zend_closure_get_closure ;
 int zend_closure_get_constructor ;
 int zend_closure_get_debug_info ;
 int zend_closure_get_gc ;
 int zend_closure_get_method ;
 int zend_closure_get_property_ptr_ptr ;
 int zend_closure_has_property ;
 int zend_closure_new ;
 int zend_closure_read_property ;
 int zend_closure_unset_property ;
 int zend_closure_write_property ;
 TYPE_1__* zend_register_internal_class (int *) ;

void zend_register_closure_ce(void)
{
 zend_class_entry ce;

 INIT_CLASS_ENTRY(ce, "Closure", closure_functions);
 zend_ce_closure = zend_register_internal_class(&ce);
 zend_ce_closure->ce_flags |= ZEND_ACC_FINAL;
 zend_ce_closure->create_object = zend_closure_new;
 zend_ce_closure->serialize = zend_class_serialize_deny;
 zend_ce_closure->unserialize = zend_class_unserialize_deny;

 memcpy(&closure_handlers, &std_object_handlers, sizeof(zend_object_handlers));
 closure_handlers.free_obj = zend_closure_free_storage;
 closure_handlers.get_constructor = zend_closure_get_constructor;
 closure_handlers.get_method = zend_closure_get_method;
 closure_handlers.write_property = zend_closure_write_property;
 closure_handlers.read_property = zend_closure_read_property;
 closure_handlers.get_property_ptr_ptr = zend_closure_get_property_ptr_ptr;
 closure_handlers.has_property = zend_closure_has_property;
 closure_handlers.unset_property = zend_closure_unset_property;
 closure_handlers.compare = zend_closure_compare;
 closure_handlers.clone_obj = zend_closure_clone;
 closure_handlers.get_debug_info = zend_closure_get_debug_info;
 closure_handlers.get_closure = zend_closure_get_closure;
 closure_handlers.get_gc = zend_closure_get_gc;
}
