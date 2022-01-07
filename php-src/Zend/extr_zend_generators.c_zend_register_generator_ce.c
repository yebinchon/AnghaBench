
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_object_handlers ;
typedef int zend_class_entry ;
struct TYPE_7__ {int get_constructor; int * clone_obj; int get_gc; int dtor_obj; int free_obj; } ;
struct TYPE_6__ {int get_iterator; int unserialize; int serialize; int create_object; int ce_flags; } ;


 int INIT_CLASS_ENTRY (int ,char*,int *) ;
 int ZEND_ACC_FINAL ;
 int * generator_functions ;
 int memcpy (TYPE_2__*,int *,int) ;
 int std_object_handlers ;
 int zend_ce_ClosedGeneratorException ;
 int zend_ce_exception ;
 TYPE_1__* zend_ce_generator ;
 int zend_ce_iterator ;
 int zend_class_implements (TYPE_1__*,int,int ) ;
 int zend_class_serialize_deny ;
 int zend_class_unserialize_deny ;
 int zend_generator_create ;
 int zend_generator_dtor_storage ;
 int zend_generator_free_storage ;
 int zend_generator_get_constructor ;
 int zend_generator_get_gc ;
 int zend_generator_get_iterator ;
 TYPE_2__ zend_generator_handlers ;
 TYPE_1__* zend_register_internal_class (int *) ;
 int zend_register_internal_class_ex (int *,int ) ;

void zend_register_generator_ce(void)
{
 zend_class_entry ce;

 INIT_CLASS_ENTRY(ce, "Generator", generator_functions);
 zend_ce_generator = zend_register_internal_class(&ce);
 zend_ce_generator->ce_flags |= ZEND_ACC_FINAL;
 zend_ce_generator->create_object = zend_generator_create;
 zend_ce_generator->serialize = zend_class_serialize_deny;
 zend_ce_generator->unserialize = zend_class_unserialize_deny;


 zend_class_implements(zend_ce_generator, 1, zend_ce_iterator);
 zend_ce_generator->get_iterator = zend_generator_get_iterator;

 memcpy(&zend_generator_handlers, &std_object_handlers, sizeof(zend_object_handlers));
 zend_generator_handlers.free_obj = zend_generator_free_storage;
 zend_generator_handlers.dtor_obj = zend_generator_dtor_storage;
 zend_generator_handlers.get_gc = zend_generator_get_gc;
 zend_generator_handlers.clone_obj = ((void*)0);
 zend_generator_handlers.get_constructor = zend_generator_get_constructor;

 INIT_CLASS_ENTRY(ce, "ClosedGeneratorException", ((void*)0));
 zend_ce_ClosedGeneratorException = zend_register_internal_class_ex(&ce, zend_ce_exception);
}
