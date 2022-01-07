
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int create_object; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int free_obj; int * clone_obj; int offset; } ;


 int Collator_ce_ptr ;
 int Collator_class_functions ;
 TYPE_3__ Collator_handlers ;
 int Collator_object ;
 int Collator_object_create ;
 int Collator_objects_free ;
 int E_ERROR ;
 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int XtOffsetOf (int ,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int std_object_handlers ;
 int zend_error (int ,char*) ;
 int zend_register_internal_class (TYPE_1__*) ;
 int zo ;

void collator_register_Collator_class( void )
{
 zend_class_entry ce;


 INIT_CLASS_ENTRY( ce, "Collator", Collator_class_functions );
 ce.create_object = Collator_object_create;
 Collator_ce_ptr = zend_register_internal_class( &ce );

 memcpy(&Collator_handlers, &std_object_handlers,
  sizeof Collator_handlers);


 Collator_handlers.offset = XtOffsetOf(Collator_object, zo);
 Collator_handlers.clone_obj = ((void*)0);
 Collator_handlers.free_obj = Collator_objects_free;


 if( !Collator_ce_ptr )
 {
  zend_error( E_ERROR,
   "Collator: attempt to create properties "
   "on a non-registered class." );
  return;
 }
}
