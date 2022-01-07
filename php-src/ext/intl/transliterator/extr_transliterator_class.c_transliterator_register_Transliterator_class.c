
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int create_object; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int write_property; int read_property; int get_property_ptr_ptr; int clone_obj; int free_obj; int offset; } ;


 int E_ERROR ;
 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int Transliterator_ce_ptr ;
 int Transliterator_class_functions ;
 int Transliterator_clone_obj ;
 int Transliterator_get_property_ptr_ptr ;
 TYPE_3__ Transliterator_handlers ;
 int Transliterator_object ;
 int Transliterator_object_create ;
 int Transliterator_objects_free ;
 int Transliterator_read_property ;
 int Transliterator_write_property ;
 int XtOffsetOf (int ,int ) ;
 int ZEND_ACC_PUBLIC ;
 int memcpy (TYPE_3__*,int *,int) ;
 int std_object_handlers ;
 int zend_declare_property_null (int ,char*,int,int ) ;
 int zend_error (int ,char*) ;
 int zend_register_internal_class (TYPE_1__*) ;
 int zo ;

void transliterator_register_Transliterator_class( void )
{
 zend_class_entry ce;


 INIT_CLASS_ENTRY( ce, "Transliterator", Transliterator_class_functions );
 ce.create_object = Transliterator_object_create;
 Transliterator_ce_ptr = zend_register_internal_class( &ce );
 memcpy( &Transliterator_handlers, &std_object_handlers,
  sizeof Transliterator_handlers );
 Transliterator_handlers.offset = XtOffsetOf(Transliterator_object, zo);
 Transliterator_handlers.free_obj = Transliterator_objects_free;
 Transliterator_handlers.clone_obj = Transliterator_clone_obj;
 Transliterator_handlers.get_property_ptr_ptr = Transliterator_get_property_ptr_ptr;
 Transliterator_handlers.read_property = Transliterator_read_property;
 Transliterator_handlers.write_property = Transliterator_write_property;


 if( !Transliterator_ce_ptr )
 {
  zend_error( E_ERROR,
   "Transliterator: attempt to create properties "
   "on a non-registered class." );
  return;
 }
 zend_declare_property_null( Transliterator_ce_ptr,
  "id", sizeof( "id" ) - 1, ZEND_ACC_PUBLIC );



}
