
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int create_object; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int free_obj; int clone_obj; int offset; } ;


 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int Spoofchecker_ce_ptr ;
 int Spoofchecker_class_functions ;
 TYPE_3__ Spoofchecker_handlers ;
 int Spoofchecker_object ;
 int Spoofchecker_object_create ;
 int Spoofchecker_objects_free ;
 int XtOffsetOf (int ,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int spoofchecker_clone_obj ;
 int std_object_handlers ;
 int zend_register_internal_class (TYPE_1__*) ;
 int zo ;

void spoofchecker_register_Spoofchecker_class(void)
{
 zend_class_entry ce;


 INIT_CLASS_ENTRY(ce, "Spoofchecker", Spoofchecker_class_functions);
 ce.create_object = Spoofchecker_object_create;
 Spoofchecker_ce_ptr = zend_register_internal_class(&ce);

 memcpy(&Spoofchecker_handlers, &std_object_handlers,
  sizeof Spoofchecker_handlers);
 Spoofchecker_handlers.offset = XtOffsetOf(Spoofchecker_object, zo);
 Spoofchecker_handlers.clone_obj = spoofchecker_clone_obj;
 Spoofchecker_handlers.free_obj = Spoofchecker_objects_free;
}
