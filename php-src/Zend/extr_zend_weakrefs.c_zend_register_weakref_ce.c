
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object_handlers ;
typedef int zend_class_entry ;
struct TYPE_6__ {int unserialize; int serialize; int create_object; int ce_flags; } ;
struct TYPE_5__ {int * clone_obj; int get_property_ptr_ptr; int unset_property; int has_property; int write_property; int read_property; int free_obj; int offset; } ;


 int INIT_CLASS_ENTRY (int ,char*,int ) ;
 int XtOffsetOf (int ,int ) ;
 int ZEND_ACC_FINAL ;
 int memcpy (TYPE_1__*,int ,int) ;
 int std ;
 TYPE_2__* zend_ce_weakref ;
 int zend_class_serialize_deny ;
 int zend_class_unserialize_deny ;
 int zend_get_std_object_handlers () ;
 TYPE_2__* zend_register_internal_class (int *) ;
 int zend_weakref ;
 int zend_weakref_free ;
 TYPE_1__ zend_weakref_handlers ;
 int zend_weakref_methods ;
 int zend_weakref_new ;
 int zend_weakref_no_isset ;
 int zend_weakref_no_read ;
 int zend_weakref_no_read_ptr ;
 int zend_weakref_no_unset ;
 int zend_weakref_no_write ;

void zend_register_weakref_ce(void)
{
 zend_class_entry ce;

 INIT_CLASS_ENTRY(ce, "WeakReference", zend_weakref_methods);
 zend_ce_weakref = zend_register_internal_class(&ce);
 zend_ce_weakref->ce_flags |= ZEND_ACC_FINAL;

 zend_ce_weakref->create_object = zend_weakref_new;
 zend_ce_weakref->serialize = zend_class_serialize_deny;
 zend_ce_weakref->unserialize = zend_class_unserialize_deny;

 memcpy(&zend_weakref_handlers, zend_get_std_object_handlers(), sizeof(zend_object_handlers));
 zend_weakref_handlers.offset = XtOffsetOf(zend_weakref, std);

 zend_weakref_handlers.free_obj = zend_weakref_free;
 zend_weakref_handlers.read_property = zend_weakref_no_read;
 zend_weakref_handlers.write_property = zend_weakref_no_write;
 zend_weakref_handlers.has_property = zend_weakref_no_isset;
 zend_weakref_handlers.unset_property = zend_weakref_no_unset;
 zend_weakref_handlers.get_property_ptr_ptr = zend_weakref_no_read_ptr;
 zend_weakref_handlers.clone_obj = ((void*)0);
}
