
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unserialize; int serialize; int create_object; } ;
typedef TYPE_1__ zend_class_entry ;


 int reflection_objects_new ;
 int zend_class_serialize_deny ;
 int zend_class_unserialize_deny ;

__attribute__((used)) static void reflection_init_class_handlers(zend_class_entry *ce) {
 ce->create_object = reflection_objects_new;
 ce->serialize = zend_class_serialize_deny;
 ce->unserialize = zend_class_unserialize_deny;
}
